import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 240
    height: 120
    visible: true
    title: qsTr("Hello World")

    property var aRect: Qt.rect(10, 10, 10, 10)

    Text {
        id:myText

        anchors.centerIn: parent
        font.pointSize: 15

        font.family: "Helvetica"
        text: "Qt test text"

    }
    Text {
        anchors.top: myText.bottom
        anchors.horizontalCenter: myText.horizontalCenter

        font.family:"Helvetica"
        font.pointSize: 15
        font.bold: true
        text: "qt text"
    }
}




