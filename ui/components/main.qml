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
            // text: "MOSCOW"
            font {
                pixelSize: 24
                weight: 900
            }
            color: "#ffffff"

            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: parent.top
            anchors.topMargin: 40
        }

        Row {
            anchors.bottom: parent.bottom
            anchors.horizontalCenter: parent.horizontalCenter
            spacing: 20
            anchors.bottomMargin: 20

            Repeater {
                model: 2

                Rectangle {
                    id: infoRect
                    color: "#222B3B"
                    width: mainWin.width / 2 - 30
                    height: (mainWin.width / 2 - 30) / 2
                    radius: 5
                    scale: 1.0

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
