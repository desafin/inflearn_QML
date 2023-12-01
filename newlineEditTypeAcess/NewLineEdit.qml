import QtQuick

Rectangle{
    border.color: "green"
    color: "white"
    radius: 4
    smooth: true

    TextInput{
        id:textInput
        anchors.fill: parent;anchors.margins: 2
        text: parent.text
        color: focus? "black":"gray"
        font.pixelSize: parent.height-20

    }
    property string text:  textInput.text
}
