import QtQuick 2.15
import QtQuick.Controls 2.15

Rectangle{
  id: fullscreenbutton
  color: "#333333"

  property alias bt : bt
  property alias anim : anim
  property bool disableButton: false

  function changeImages(checked){
    if (checked){
      bt.x = 435
      bt.y = 10
      fullscreenbutton.bt.width = 52
      fullscreenbutton.bt.height = 52

      mainImage.source = "../res/fullscreen.png"
    }
    else{
      bt.x = 709
      bt.y = 301
      fullscreenbutton.bt.width = 20
      fullscreenbutton.bt.height = 20

      mainImage.source = "../res/minimalized.png"
    }
  }

  CheckBox{
    x: 709
    y: 301
    opacity:0
    width: 20
    height: 20
    id: bt
    onClicked: {
      if (!disableButton){
        anim.running = true
        disableButton = true
      }
    }
  }

  Rectangle{
    id: animationfadeio
    width: 1920
    height: 1080
    //x: -435
    //y: -10
    x:0
    y:0
    color: "#000000"
    opacity: 0

    PropertyAnimation {
      id: anim
      properties: "opacity"
      easing.type: Easing.InBounce
      to: 1
      from: 0
      onFinished: {animm.running = true; changeImages(bt.checked)}
      target: animationfadeio
      duration: 3000
    }
    PropertyAnimation {
      id: animm
      properties: "opacity"
      easing.type: Easing.InBounce
      to: 0
      from: 1
      onFinished: {disableButton = false}
      target: animationfadeio
      duration: 3000
    }
  }
}
