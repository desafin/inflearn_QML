import QtQuick

Window {
    width: 400
    height: 112
    visible: true
    title: qsTr("Hello World")

    Rectangle{
        width: 400
        height: 112
        color:"lightblue"
        TextInput{
            anchors.left: parent.left
            y:16
            anchors.right: parent.right

            text:"안녕하세요"
            font.pixelSize: 32
            color:focus?"black":"gray"
            focus:true
        }
        TextInput{
            anchors.left: parent.left
            y:64
            anchors.right: parent.right

            text:"반갑습니다"
            font.pixelSize: 32
            color: focus? "black":"gray"
        }
    }
}
