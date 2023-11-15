import QtQuick 2.0
Window {
    width: 300; height: 150; visible: true
    title: qsTr("[Tab] 키 예제")

    Text {
        id: firstLabel; x:24; y:16

        property int times: 24
        property alias aliasTimes: firstLabel.times

        text: "안녕하세요. " + aliasTimes
        font.pixelSize: 24
        focus: true
        color: focus ? "red" : "black"

        KeyNavigation.tab: secondLabel
    }

    Text {
        id: secondLabel; x: 24; y: 64
        text: "Hello world."
        font.pixelSize: 24
        focus: false
        color: focus ? "red" : "black"

        KeyNavigation.tab: firstLabel
    }
}
