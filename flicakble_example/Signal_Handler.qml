import QtQuick
import "content"

Window {
    visible: true; width: 300; height: 300

    SquareButton
    {
        id: sb // connection 을 사용하는 경우, id 값을 줘야 함
        width: 300; height: 300
        property string msg: ''

        onActivated: function(xPosition, yPosition) {
            myText = 'position : ' + xPosition + ', ' + yPosition
        }

        // Arguments 가 있는 경우 아래와 같이 사용해도 됨
//        Connections {
//            function onActivated(xPosition, yPosition) {
//                sb.myText = 'position : ' + xPosition + ', ' + yPosition

//            }
//        }

        onDeactivated: myText = "Deactivated!"
    }
}

