import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    id: window
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Grid {
        id: grid
        x: 39
        y: 8
        width: 587
        height: 400
        anchors.verticalCenter: parent.verticalCenter
        anchors.verticalCenterOffset: -10

        Rectangle {
            id: green_rect
            width: 100
            height: 100
            color: "#00ff00"
            radius: 20
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 10
            anchors.topMargin: 10

            MouseArea {
                id: mouseArea
                width: 100
                height: 100
                enabled: true

                //                JS function
                onClicked: {
                    console.log("Click on the green rectangle.")
                }
            }
        }
        Rectangle {
            id: purple_rect
            width: 100
            height: 100
            color: "#aa00ff"
            radius: 20
            border.color: "#d77171"
            border.width: 2
            anchors.left: green_rect.right
            anchors.top: parent.top
            anchors.topMargin: 10
            anchors.leftMargin: 50

            MouseArea {
                id: mouseArea1
                width: 100
                height: 100

                onClicked: {
                    console.log("Click on the purple rectangle.")
                }
            }
        }
        Image {
            id: image
            y: 139
            width: 200
            height: 203
            anchors.left: parent.left
            anchors.bottom: parent.bottom
            source: "image/icons8-up-70.png"
            anchors.bottomMargin: 10
            anchors.leftMargin: 0
            activeFocusOnTab: false
            asynchronous: false
            autoTransform: false
            mipmap: false
            smooth: true
            mirror: false
            fillMode: Image.PreserveAspectFit
        }
        AnimatedImage {
            id: animatedImage
            x: 245
            y: 139
            width: 333
            height: 203
            anchors.right: parent.right
            anchors.bottom: parent.bottom
            source: "image/giphy.gif"
            anchors.bottomMargin: 10
            anchors.rightMargin: 0
//            paused: true
            playing: true
            speed: 0.5
        }
    }
}



