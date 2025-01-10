import QtQuick 2.15
import QtQuick.Controls 2.15

Rectangle {
    id: debug

    property int size
    property string color
    property int posY
    property int posX
    function log(tex){
        consold.text += tex
    }
    function clear(){
      consold.text = ""
    }
    Label{
      id:consold
      x: posX
      y: posY
      font.pixelSize: debug.size
      color: debug.color
      text: ""
    }
}
