import QtQuick 2.15
import QtQuick.Controls 2.15
import SddmComponents 2.0

Rectangle {
  id: root

  property alias loginButton : loginButton
  property alias passwordInput : passwordInput
  property alias loginInput : loginInput
  property alias showPassword : showPassword

  function loginfunc(username, pass, sessionid) {
    sddm.login(username, pass, sessionid)
  }

  TextInput{
    id: loginInput

    color: "#cbcbcb"

    font.family: interfont.name
    font.pixelSize: 13

    x: 1024
    rightPadding: 50
    wrapMode: TextInput.NoWrap
    y: 580

    KeyNavigation.tab: passwordInput
    KeyNavigation.down: passwordInput
  }

  CheckBox{
    id: showPassword
    opacity: 0
    x: 962
    y: 597
    onClicked: {
      if (passwordInput.echoMode == TextInput.Password){
        passwordInput.echoMode = TextInput.Normal
      }
      else{
        passwordInput.echoMode = TextInput.Password
      }
    }
  }
  TextInput{
    id: passwordInput

    x: 1050
    wrapMode: TextInput.NoWrap
    rightPadding: 50
    y: 601

    color: "#cbcbcb"

    echoMode: TextInput.Normal

    font.family: interfont.name
    font.pixelSize: 13

    KeyNavigation.up: loginInput
    KeyNavigation.tab: loginInput
    KeyNavigation.down: loginButton
  }
  Text{
    id: loginFailedInfo
    text: "Wrong password/username"
    color: "#FF0000"

    font.family: interfont.name
    font.pixelSize: 80
    x: 400
    y: 200
    opacity: 0
  }

  PropertyAnimation {
    id: loginFailedAnim
    properties: "opacity"

    easing.type: Easing.InBounce
    to: 1
    from: 0

    onFinished: {loginFailedAnimm.running = true}

    target: loginFailedInfo
    duration: 1000 / 2
  }
  PropertyAnimation {
    id: loginFailedAnimm
    properties: "opacity"

    easing.type: Easing.InBounce
    to: 0
    from: 1


    target: loginFailedInfo
    duration: 1000 / 2
  }

  Connections {
		target: sddm

		function onLoginFailed()
		{
			loginFailedAnim.running = true
		}
  }

  Button {
    id: loginButton

    x: 967
    y: 625

    width:60
    height:15

    opacity: 0

    onClicked: loginfunc(loginInput.text, passwordInput.text, sessionSelection.sessionss.index)

    KeyNavigation.up: passwordInput
  }
}
