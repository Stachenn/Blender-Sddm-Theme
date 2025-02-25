import QtQuick 2.15
import QtQuick.Controls 2.15

Rectangle{
  id: fullscreenbutton
  color: "#333333"

  property alias bt : bt
  property alias anim : anim
  property bool disableButton: false
  property int animationTime: 1500
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

      loginForm.passwordInput.x = 1300
      loginForm.passwordInput.y = 720
      loginForm.passwordInput.font.pixelSize = 30

      loginForm.showPassword.width = 40
      loginForm.showPassword.height = 40
      loginForm.showPassword.x = 1098
      loginForm.showPassword.y = 712

      loginForm.loginInput.x = 1240
      loginForm.loginInput.y = 668
      loginForm.loginInput.font.pixelSize = 30

      //sessionSelection.sessionss.borderColor = "#301850"
      sessionSelection.sessionss.height = 225
      sessionSelection.sessionss.width = 25
      sessionSelection.sessionss.x = 500
      sessionSelection.sessionss.y = 440
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
      actionButtons.hibernatebt.width = 80

      actionButtons.rebootbt.x = 970
      actionButtons.rebootbt.y = 687
      actionButtons.rebootbt.height = 12
      actionButtons.rebootbt.width = 80

      loginForm.loginInput.x = 1024
      loginForm.loginInput.y = 580
      loginForm.loginInput.font.pixelSize = 13

      loginForm.showPassword.width = 35
      loginForm.showPassword.height = 21
      loginForm.showPassword.x = 962
      loginForm.showPassword.y = 597

      loginForm.passwordInput.x = 1050
      loginForm.passwordInput.y = 601
      loginForm.passwordInput.font.pixelSize = 13

      sessionSelection.sessionss.height = 225
      sessionSelection.sessionss.width = 25
      sessionSelection.sessionss.x = 300
      sessionSelection.sessionss.y = -69
      //sessionSelection.sessionss.borderColor = "#313030"
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
        sessionSelectionAnimation.running = true
        disableButton = true
      }
    }
  }
  // Fullscreen Button

  Rectangle{
    id: animationfadeio

    width: 1920
    height: 1080
    x: 0
    y: 0

    color: "#000000"
    opacity: 0

    PropertyAnimation {
      id: anim
      properties: "opacity"

      easing.type: Easing.InBounce
      to: 1
      from: 0

      onFinished: {changeImages(bt.checked); animm.running = true}

      target: animationfadeio

      duration: animationTime / 2
    }
    PropertyAnimation {
      id: sessionSelectionAnimation
      properties: "opacity"

      easing.type: Easing.InBounce
      to: 0
      from: 1

      target: sessionSelection
      onFinished: {sessionSelectionAnimationn.running = true}
      duration: animationTime / 2
    }
    PropertyAnimation {
      id: sessionSelectionAnimationn
      properties: "opacity"

      easing.type: Easing.InBounce
      to: 1
      from: 0

      target: sessionSelection

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
