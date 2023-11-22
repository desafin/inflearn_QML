import QtQuick
import QtQuick.Controls

Window {
    visible: true
    width: 200
    height: 200
    id:relay


    signal megReceived(string person,string notice)
    Component.onCompleted: {
        relay.megReceived.connect(sendToPost)
        relay.megReceived.connect(sendToEmail)
    }
    MouseArea{
        anchors.fill: parent
        onClicked: relay.megReceived("홍길동","happy birthday")
    }

    Text {
        id: output1
        anchors.centerIn: parent

    }
    Text {
        id: output2
        anchors.centerIn: output1.buttom
        anchors.horizontalCenter: parent.horizontalCenter
    }

    function sendToPost(person,notice){
        output1.text="우편"+person+","+notice
    }

    function sendToEmail(person,notice){
        output2.text="이메일"+person+","+notice
    }

}
