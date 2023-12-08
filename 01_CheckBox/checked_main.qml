import QtQuick
import "content"

Window {
    id: root;
    visible: true
    width: 250
    height: 100
    color: "lightblue"

    NewCheckBox {
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter

        // Case 1
        onMyChecked: function(checkValue) {
            if(checkValue)
                root.color = "red"
            else
                root.color = "lightblue"
        }

        // Case 2
        /*
        Connections {
            function onMyChecked(checkValue) {
                if(checkValue)
                    root.color = "red"
                else
                    root.color = "lightblue"
            }

        }
        */

        //Case 2 : 아래와 같이 사용해도 되지만 Case 1, Case 2 방식으로
        //         사용하는 것을 추천
        /*
        onMyChecked: checkValue ? root.color = "red"
                                :  root.color = "lightblue"
        */
    }
}
