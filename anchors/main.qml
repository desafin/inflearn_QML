import QtQuick

Window {
    width: img.width
    height: img.height
    visible: true
    title: qsTr("anchors 예제")

    Rectangle{
        width: img.width
        height: img.height
        Image {
            id: img
            source: "qrc:/images/bluebackground.png"
        }

        BorderImage {
            source: "qrc:/images/bluebutton.png"
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.centerIn: parent
            anchors.topMargin: 15
            width: 350
            height: 75

            Image {
                anchors.left: parent.left
                anchors.leftMargin: 40
                anchors.verticalCenter: parent.verticalCenter
                source: "qrc:/images/login.png"
            }

        }
        Text {
            anchors.left: parent.horizontalCenter
            anchors.leftMargin: -20
            anchors.verticalCenter: parent.verticalCenter

            text:"로그인"
            font.bold: true
            color:"white"

            font.pixelSize: 32
        }

    }
}
