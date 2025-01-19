import QtQuick 2.15
import QtQuick.Controls 2.15

Rectangle{
  id: fullscreenbutton
  color: "#333333"

  property alias bt : bt
  property alias anim : anim
  property bool disableButton: false
  property int animationTime: 200
  // Definition of property aka varibles

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
      //bt - fullscreen button
      mainImage.source = "../res/minimalized.png"
    }
  }
  //animation changing func

  CheckBox{
    id: bt

    opacity:0

    x: 709
    y: 301
    width: 20
    height: 20

    onClicked: {
      if (!disableButton){
        anim.running = true
        disableButton = true
      }
    }
  }
  // fullscreen Button

  Rectangle{
    id: animationfadeio

    width: 1920
    height: 1080
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
      duration: animationTime / 2
    }
    PropertyAnimation {
      id: animm
      properties: "opacity"

      easing.type: Easing.InBounce
      to: 0
      from: 1

      onFinished: {disableButton = false}

      target: animationfadeio
      duration: animationTime / 2
    }
  }
  // Animation Initialization
}
