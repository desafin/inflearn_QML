import QtQuick
//import ".NewLineEdit.qml"


Window {
    width: 400
    height: 200
    visible: true

    color: "lightblue"

    NewLineEdit{
        id:lineEdit
        anchors.centerIn: parent
        width: 300
        height: 50
        text:"안녕하세요"
    }
    Text {
        anchors.top:lineEdit.bottom
        anchors.horizontalCenter: parent.horizontalCenter
        font.pixelSize: 20
        text: "입력문자열:"+ lineEdit.text
    }
}
