import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.3
import QtQuick.Layouts 1.0

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    property string textToShow: ""
    property variant items: []

    Grid {
        id: grid
        x: 36
        y: 25
        width: 547
        height: 416
    }

    RowLayout {
        id: row1
        x: 106
        y: 157

        Button {
            id: num1
            height: 100
            text: qsTr("1")
            Layout.columnSpan: 5
            Layout.rowSpan: 5

            onClicked: {
                // This is available in all editors.
                console.log("You clicked on number " + text)
                textToShow += text
                items.append[1]
            }

        }

        Button {
            id: num2
            height: 100
            text: qsTr("2")
            Layout.columnSpan: 5
            Layout.rowSpan: 5

            onClicked: {
                // This is available in all editors.
                console.log("You clicked on number " + text)
                textToShow += text
            }
        }

        Button {
            id: num3
            height: 100
            text: qsTr("3")
            Layout.columnSpan: 5
            Layout.rowSpan: 5

            onClicked: {
                // This is available in all editors.
                console.log("You clicked on number " + text)
                textToShow += text
            }
        }
    }

    RowLayout {
        id: row2
        x: 106
        y: 213
        Button {
            id: num4
            text: qsTr("4")
            Layout.columnSpan: 5
            Layout.rowSpan: 5

            onClicked: {
                // This is available in all editors.
                console.log("You clicked on number " + text)
                textToShow += text
            }
        }

        Button {
            id: num5
            text: qsTr("5")
            Layout.columnSpan: 5
            Layout.rowSpan: 5

            onClicked: {
                // This is available in all editors.
                console.log("You clicked on number " + text)
                textToShow += text
            }
        }

        Button {
            id: num6
            text: qsTr("6")
            Layout.columnSpan: 5
            Layout.rowSpan: 5

            onClicked: {
                // This is available in all editors.
                console.log("You clicked on number " + text)
                textToShow += text
            }
        }
    }

    RowLayout {
        id: row3
        x: 106
        y: 268
        Button {
            id: num7
            text: qsTr("7")
            Layout.columnSpan: 5
            Layout.rowSpan: 5

            onClicked: {
                // This is available in all editors.
                console.log("You clicked on number " + text)
                textToShow += text
            }
        }

        Button {
            id: num8
            text: qsTr("8")
            Layout.columnSpan: 5
            Layout.rowSpan: 5

            onClicked: {
                // This is available in all editors.
                console.log("You clicked on number " + text)
                textToShow += text
            }
        }

        Button {
            id: num9
            text: qsTr("9")
            Layout.columnSpan: 5
            Layout.rowSpan: 5

            onClicked: {
                // This is available in all editors.
                console.log("You clicked on number " + text)
                textToShow += text
            }
        }
    }

    RowLayout {
        id: row4
        x: 106
        y: 322
        Button {
            id: num10
            text: qsTr("*")
            onClicked: {
                    // This is available in all editors.
                    console.log("You clicked on number " + text)
                }
            Layout.columnSpan: 5
            Layout.rowSpan: 5
        }

        Button {
            id: num11
            text: qsTr("0")
            onClicked: {
                    // This is available in all editors.
                    console.log("You clicked on number " + text)
                    textToShow += text
                }
            Layout.columnSpan: 5
            Layout.rowSpan: 5
        }

        Button {
            id: num12
            text: qsTr("#")
            onClicked: {
                    // This is available in all editors.
                    console.log("You clicked on number " + text)
                }
            Layout.columnSpan: 5
            Layout.rowSpan: 5
        }
    }

    Column {
        id: column
        x: 447
        y: 157
        width: 108
        height: 205

        Button {
            id: button
            text: qsTr("add")
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.rightMargin: 4
            anchors.leftMargin: 4
            onClicked: {
                    // This is available in all editors.
                    console.log("You clicked on " + text)
                    textToShow += " + "

                }
        }

        Button {
            id: button1
            text: qsTr("subtract")
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: button.bottom
            anchors.rightMargin: 4
            anchors.leftMargin: 4
            anchors.topMargin: 16
            onClicked: {
                    // This is available in all editors.
                    console.log("You clicked on " + text)
                    textToShow += " - "
                }
        }

        Button {
            id: button2
            text: qsTr("multiply")
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: button1.bottom
            anchors.topMargin: 16
            anchors.rightMargin: 4
            anchors.leftMargin: 4
            onClicked: {
                    // This is available in all editors.
                    console.log("You clicked on " + text)
                    textToShow += " * "
        }
     }

        Button {
            id: button3
            text: qsTr("devide")
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: button2.bottom
            anchors.topMargin: 14
            anchors.rightMargin: 4
            anchors.leftMargin: 4
            onClicked: {
                // This is available in all editors.
                console.log("You clicked on " + text)
                textToShow += " / "
            }
        }
}
    Text {
        id: screen
        x: 106
        y: 50
        width: 312
        height: 84
        text: qsTr(textToShow)
        font.pixelSize: 20
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
    }

    Row {
        id: row
        x: 106
        y: 50
        width: 449
        height: 90

        Button {
            id: result
            text: qsTr("Result")
            anchors.right: parent.right
            anchors.top: parent.top
            autoRepeat: true
            anchors.rightMargin: 5
            anchors.topMargin: 25
            onClicked: {
                // This is available in all editors.
                console.log(textToShow + " = ")
                console.log(items[0])
                textToShow += " = "
            }
        }
    }
}

