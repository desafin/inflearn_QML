import QtQuick

Window {
    visible: true
    width: 200;height: 200
    Component{
        id:redSquare
        Rectangle{
            color: "red";width: 100;height: 100
        }
    }

    Loader{
        sourceComponent: redSquare
        x:0
        y:0
    }
    Loader{
        sourceComponent: redSquare
        x:100
        y:100
    }

}
