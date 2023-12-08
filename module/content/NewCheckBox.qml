import QtQuick 2.15

Item {
    Image {
        id: checkImage
        anchors.left: parent.left
        anchors.verticalCenter: parent.verticalCenter
    }
    Text {
        id: textItem
        anchors.left: checkImage.right
        anchors.leftMargin: 4
        anchors.verticalCenter: parent.verticalCenter
        text: "option";font.pixelSize: checkImage.height-4
    }




    states:[
        State{
            name:"cheaked"
            PropertyChanges{
                target:checkImage;source:"qrc:/images/checked.svg"
            }
        }

            }
            State {
                name: "unchecked"
                PropertyChanges {
                    target: checkImage;source:"qrc:/images/unchecked.svg"
            }

            }

    ]

    state:"unchecked"
    MouseArea{
        anchors.fill: checkImage
        onClicked:{
            if(parent.state==="checked"){
                parent.state="unchecked"
                parent.myChecked(false)

            }else{
                parent.state="checked"
                parent.myChecked(true)
            }

        }
}
        signal myChecked(bool checkValue)
}
