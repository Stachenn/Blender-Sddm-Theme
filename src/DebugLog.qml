import QtQuick 2.15
import QtQuick.Controls 2.15

Rectangle {
    id: debug

    property int size
    property string color
    property int posY
    property int posX
    //Definition of property aka varibles

    function log(tex){
        consold.text += tex
    }
    function clear(){
      consold.text = ""
    }
    // debug functions - log : print;
    // clear : clear buffer

    Label{
      id:consold

      x: posX
      y: posY

      font.pixelSize: debug.size
      color: debug.color
      text: ""
    }
    // Output 
}
