import QtQuick

Window {
    width: 200
    height: 200
    visible: true
    Rectangle{
        width:200;height: 200;
        color: "lightblue"

        Rectangle{
            id:rect
            x:50
            y:50
            width: 100
            height: 100
            color:"white"


            //color: mouseArea.containsMouse?"green":"white"
            MouseArea{
                anchors.fill: parent
                acceptedButtons: Qt.LeftButton|Qt.RightButton//두가지만 이벤트로 받아들여라
                onClicked: {
                    if (mouse.button===Qt.RightButton)
                        parent.color="blue"
                    else
                        parent.color="red"

                }

            }

        }
    }
}
