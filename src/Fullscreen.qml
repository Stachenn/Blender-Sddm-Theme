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
      mainImage.source = "../res/fullscreen.png"

      bt.x = 435
      bt.y = 10
      fullscreenbutton.bt.width = 52
      fullscreenbutton.bt.height = 52

      loginForm.loginButton.x = 1100
      loginForm.loginButton.y = 760
      loginForm.loginButton.width = 170
      loginForm.loginButton.height = 50

      actionButtons.powerbt.x = 1099
      actionButtons.powerbt.y = 810
      actionButtons.powerbt.height = 40
      actionButtons.powerbt.width = 160

      actionButtons.hibernatebt.x = 1099
      actionButtons.hibernatebt.y = 855
      actionButtons.hibernatebt.height = 40
      actionButtons.hibernatebt.width = 220

      actionButtons.rebootbt.x = 1099
      actionButtons.rebootbt.y = 902
      actionButtons.rebootbt.height = 40
      actionButtons.rebootbt.width = 160

    }
    else{
      mainImage.source = "../res/minimalized.png"

      bt.x = 709
      bt.y = 301
      fullscreenbutton.bt.width = 20
      fullscreenbutton.bt.height = 20

      loginForm.loginButton.x = 967
      loginForm.loginButton.y = 625
      loginForm.loginButton.width = 60
      loginForm.loginButton.height = 15

      actionButtons.powerbt.x = 970
      actionButtons.powerbt.y = 648
      actionButtons.powerbt.height = 12
      actionButtons.powerbt.width = 80

      actionButtons.hibernatebt.x = 970
      actionButtons.hibernatebt.y = 668
      actionButtons.hibernatebt.height = 12

      actionButtons.rebootbt.x = 970
      actionButtons.rebootbt.y = 687
      actionButtons.rebootbt.height = 12
      // bt - Fullscreen button
    }
  }
  // Animation changing func

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
  // Fullscreen Button

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
