import QtQuick 2.15
import QtQuick.Controls 2.15

ApplicationWindow {
    id: mainWin
    visible: true
    height: 640
    width: 420
    minimumHeight: 640
    minimumWidth: 360
    maximumHeight: 640
    maximumWidth: 360
    
    title: "WeatherAPPbyEgor41k"

    Rectangle {
        anchors.fill: parent
        color: "#0C121D"

        Text {
            text: city
            font {
                pixelSize: 24
                weight: 900
            }
            color: "#ffffff"

            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: parent.top
            anchors.topMargin: 40
        }

        Text {
            // ??? temp place_holder ???
            text: time
            font {
                pixelSize: 12
            }
            color: "#95ffffff"

            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: parent.top
            anchors.topMargin: 30
        }

        Text {
            id: teste
            //??? temp place_holder ???
            text: temp
            font {
                pixelSize: 44
                weight: 900
            }
            color: "#ffffff"

            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: parent.top
            anchors.topMargin: 326
        }

        Text {
            //??? temp place_holder ???
            text: description
            font {
                pixelSize: 24
                weight: 900
            }
            color: "#95ffffff"

            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: parent.top
            anchors.topMargin: 380
        }

        Image {
            source: "test.png"
            width: 60
            height: 60
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: parent.top
            anchors.topMargin: 80
        }        

        Column {
            anchors.bottom: parent.bottom
            anchors.horizontalCenter: parent.horizontalCenter
            spacing: 20
            anchors.bottomMargin: 20

            Repeater {
                model: 2 

                Row {
                    anchors.horizontalCenter: parent.horizontalCenter
                    spacing: 20

                    property int outerIndex: index 

                    Repeater {
                        model: 2 

                        Rectangle {
                            id: infoRect
                            color: "#222B3B"
                            width: mainWin.width / 2 - 30
                            height: (mainWin.width / 2 - 30) / 2
                            radius: 5
                            scale: 1.0

                            property int uniqueId: outerIndex * 2 + index + 1

                            Text {
                                id: currentDataText
                                text: "Info " + uniqueId + ":"
                                font {
                                    pixelSize: 16
                                    weight: 900
                                }
                                color: "#95ffffff"

                                anchors.top: parent.top
                                anchors.left: parent.left
                                anchors.topMargin: 7
                                anchors.leftMargin: 10
                            }

                            Text {
                                property string textId: "infoText" + uniqueId
                                id: textId
                                // text: textId
                                font {
                                    pixelSize: 32
                                    weight: 900
                                }
                                color: "#ffffff"

                                anchors.top: currentDataText.top
                                anchors.left: currentDataText.left
                                anchors.topMargin: 20
                            }

                            Behavior on scale {
                                NumberAnimation {
                                    duration: 100
                                    easing.type: Easing.In
                                }
                            }

                            MouseArea {
                                anchors.fill: parent
                                hoverEnabled: true

                                onEntered: {
                                    parent.color = "#3D4858"
                                    parent.scale = 1.05
                                }
                                onExited: {
                                    parent.color = "#222B3B"
                                    parent.scale = 1.0
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}
