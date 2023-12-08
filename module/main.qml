import QtQuick
import "content"


Window {
    id:root
    width: 250
    height: 100
    visible: true
    color: "lightblue"


    NewCheckBox{
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter



        onMyChecked:function(checkValue){
            if(checkValue)
                root.color="red"
            else
                root.color="lightblue"
        }
    }
}
