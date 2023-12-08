import QtQuick
import QtQuick.Controls

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Column{
        anchors.centerIn: parent;spacing:10
        Text{
            text:msg.author
            Component.onCompleted:{
                msg.author="hello"
            }
        }
    }
    Button{
        width: 290;text: "C++postmessage 함수호출"
        onClicked: {
            var str ="who are you"
            var result=msg.postMessage(str)
            myResult.text="리턴값 :"+result;
            msg.refresh();
        }

    }
    Text {
        id: myResult
        text: "리턴값:"
    }
}
