import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.3

Window {
    id: window
    width: 640
    height: 480
    visible: true
    color: "#55aa7f"
    title: qsTr("Hello World")

    property string sliderValue: ""

    Column {
        id: column
        x: 122
        y: 58
        width: 375
        height: 400
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter

        Slider {
            id: slider
            live: true
            stepSize: 1
            to: 100
            anchors.horizontalCenter: parent.horizontalCenter
            value: 30
            onValueChanged: {
                console.log("Current value of Slider: " + value)
                sliderValue = value
            }
        }

        Text {
            id: text1
            x: 93
            width: 200
            height: 50
            color: "#ffff00"
            text: sliderValue
            anchors.top: slider.bottom
            font.pixelSize: 18
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            lineHeight: 10
            anchors.topMargin: 15
            styleColor: "#e91616"
            minimumPixelSize: 20
            textFormat: Text.RichText

        }

        ProgressBar {
            id: progressBar
            height: 10
            anchors.verticalCenter: parent.verticalCenter
            value: slider.value
            to: 100
            font.pointSize: 10
            anchors.horizontalCenter: parent.horizontalCenter
        }
    }
}
