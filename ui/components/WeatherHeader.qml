// WeatherHeader.qml
import QtQuick 2.15
import QtQuick.Controls 2.15

Item {
    property string city

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
            // Placeholder for time
            text: "13:29"
            font {
                pixelSize: 12
            }
            color: "#95ffffff"
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: parent.top
            anchors.topMargin: 30
        }
    }
}
