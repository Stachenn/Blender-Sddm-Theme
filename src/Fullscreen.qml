import QtQuick 2.15
import QtQuick.Controls 2.15

Rectangle{
  id: fullscreenbutton
  color: "#333333"

  property alias bt : bt
  property alias anim : anim
  property string fullscreenimg: "../res/fullscreen.png"
  property string minimalizedimg: "../res/minimalized.png"

  function fullscreenscript(checked){
    if (checked){
      mainImage.source = "../res/fullscreen.png"
      fullscreenbutton.x = 435
      fullscreenbutton.y = 10
      fullscreenbutton.bt.width = 52
      fullscreenbutton.bt.height = 52

      anim.running = true
    }
    else{
      fullscreenbutton.x = 709
      fullscreenbutton.y = 301
      fullscreenbutton.bt.width = 20
      fullscreenbutton.bt.height = 20


      anim.running = true

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
    onClicked: {fullscreenscript(checked)}
  }

  Rectangle{
    id: animationfadeio
    width: 1920
    height: 1080
    x: -435
    y: -10
    color: "#000000"
    opacity: 0

    PropertyAnimation {
      id: anim
      properties: "opacity"
      easing.type: Easing.InBounce
      to: 1
      from: 0
      onFinished: animm.running = true
      target: animationfadeio
      duration: 3000
    }
    PropertyAnimation {
      id: animm
      properties: "opacity"
      easing.type: Easing.InBounce
      to: 0
      from: 1
      target: animationfadeio
      duration: 3000
    }
  }
}
