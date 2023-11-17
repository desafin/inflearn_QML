import QtQuick


Rectangle{
    id:button

    property alias text: ""
    Accessible.role: Accessible.Button
    Accessible.onPressAction: {


            button.clicked()
    }
    signal clicked


    Text{
        id:buttonText

    }

}
