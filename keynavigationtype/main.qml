import QtQuick

Window {
   visible: true
   width: 400
   height: 200

   Rectangle{
       id:leftRect
       x:25
       y:25
       width: 150
       height: 150
       color: focus?"red":"darked"
       KeyNavigation.right: rightRect
       focus: true
   }
   Rectangle{
       id:rightRect;x:225;width: 150;height: 150
       color: focus?"#00ff00":"green"
       KeyNavigation.left: leftRect
   }
}
