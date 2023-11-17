import QtQuick

Window {
    visible: true
    width: 500
    height: 500

    Rectangle{
        width: 230;height: 190;color: "white"
        Image {
            id: logo
            x:30;y:30
            source: "qrc:/images/bluebutton.png"
            transformOrigin: Item.Center

        }
        Keys.onPressed: {
            if(event.key===Qt.Key_Left){
                logo.rotation=(logo.rotation-10)%360

            }
            else if (event.key===Qt.Key_Right){
                logo.rotation=(logo.rotation+10)%360
            }
        }
        focus:true
    }
}
