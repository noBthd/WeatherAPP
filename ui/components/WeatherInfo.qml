import QtQuick 2.15
import QtQuick.Controls 2.15

Item {
    property var data: []

    Column {
        anchors.bottom: parent.bottom
        anchors.horizontalCenter: parent.horizontalCenter
        spacing: 20
        anchors.bottomMargin: 20

        Repeater {
            model: data.length  // Fix the typo here from `lenght` to `length`

            Row {
                anchors.horizontalCenter: parent.horizontalCenter
                spacing: 20

                Rectangle {
                    id: infoRect  // Static ID for all items (not dynamic)
                    color: "#222B3B"
                    width: parent.width / 2 - 30
                    height: (parent.width / 2 - 30) / 2
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
