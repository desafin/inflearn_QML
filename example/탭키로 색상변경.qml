import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 300
    height: 150
    visible: true
    title: qsTr("press [tab] example")

    Text {
        id: firstLabel
        x: 24; y: 16

        property int times: 24
        property alias aliasTimes: firstLabel.times

        text: "hello" + aliasTimes
        font.pixelSize: 24
        focus: true
        color: focus ? "red" : "black"

        Keys.onTabPressed: secondLabel.forceActiveFocus()
    }

    Text {
        id: secondLabel
        x: 24; y: 64

        text: "hello world"
        font.pixelSize: 24
        focus: false
        color: focus ? "red" : "black"

        Keys.onTabPressed: firstLabel.forceActiveFocus()
    }
}
