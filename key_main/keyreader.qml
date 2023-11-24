import QtQuick

Item {
    Text {
        anchors.centerIn: parent
        id:myText
        font.pixelSize: 15
    }

    Item {
        focus: true


        Keys.onPressed:function(event){
            myText.text="capture Key="+ event.text
            event.accepted=true;
        }
    }

}
