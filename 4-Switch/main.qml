import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.3

Window {
    id: window
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Column {
        id: column
        x: 44
        y: 40
        width: 200
        height: 352
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter

        Switch {
            id: switch1
            text: qsTr("Switch")
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter
        }

        SwitchDelegate {
            id: control
            text: qsTr("Switch Delegate")
            anchors.top: switch1.bottom
            anchors.topMargin: 50

            contentItem: Text {
                rightPadding: control.indicator.width + control.spacing
                text: control.text
                font: control.font
                opacity: enabled ? 1.0 : 0.3
                color: control.down ? "#17a81a" : "#21be2b"
                elide: Text.ElideRight
                verticalAlignment: Text.AlignVCenter
            }

           indicator: Rectangle {
               implicitWidth: 48
               implicitHeight: 26
               x: control.width - width - control.rightPadding
               y: parent.height / 2 - height / 2
               radius: 13
               color: control.checked ? "#17a81a" : "transparent"
               border.color: control.checked ? "#17a81a" : "#cccccc"

               Rectangle {
                   x: control.checked ? parent.width - width : 0
                   width: 26
                   height: 26
                   radius: 13
                   color: control.down ? "#cccccc" : "#ffffff"
                   border.color: control.checked ? (control.down ? "#17a81a" : "#21be2b") : "#999999"
               }
           }

           background: Rectangle {
               implicitWidth: 100
               implicitHeight: 40
               visible: control.down || control.highlighted
               color: control.down ? "#bdbebf" : "#eeeeee"
           }
        }

        ListView {
            anchors.top: switchDelegate.bottom
            anchors.topMargin: 50
            model: ["Option 1", "Option 2", "Option 3"]
            delegate: SwitchDelegate {
                text: modelData
            }
        }
    }
}
