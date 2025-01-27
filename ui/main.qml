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
            //!!! temp place_holder !!!
            // text: "overcast clouds"
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

                    Repeater {
                        model: 2 

                        Rectangle {
                            id: infoRect
                            color: "#222B3B"
                            width: mainWin.width / 2 - 30
                            height: (mainWin.width / 2 - 30) / 2
                            radius: 5
                            scale: 1.0

                            Text {
                                id: "infoText"
                                text: "Info " + (index + 1) + ":"
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
                                id: "test"
                                text: "test"
                                font {
                                    pixelSize: 32
                                    weight: 900
                                }
                                color: "#ffffff"

                                anchors.top: infoText.top
                                anchors.left: infoText.left
                                anchors.topMargin: 20
                                // anchors.verticalCenter: parent.verticalCenter
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
