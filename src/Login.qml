import QtQuick 2.15
import QtQuick.Controls 2.15

Rectangle {
  id: root

  function loginfunc(username, pass, sessionid) {
    sddm.login(username, pass, sessionid)
  }

  Rectangle{
    id:loginrect

    color: "#17173e"

    width: loginInput.contentWidth
    height: loginInput.contentHeight
    x: 1025
    y: 578
  }

  TextInput{
    id: loginInput

    color: "#cbcbcb"
    cursorVisible: true

    x: 1025
    y: 578

    KeyNavigation.tab: passwordInput
    KeyNavigation.down: passwordInput
  }

  Rectangle{
    id: passwordrect

    color: "#17173e"


    width: passwordInput.contentWidth
    height: passwordInput.contentHeight
    x: 1042
    y: 600

  }
  TextInput{
    id: passwordInput

    x: 1042
    y: 600

    color: "#cbcbcb"
    cursorVisible: true

    KeyNavigation.up: loginInput
    KeyNavigation.tab: loginInput
    KeyNavigation.down: loginButton
  }


  Button {
    id: loginButton

    x: 960
    y: 540

    onClicked: loginfunc(loginInput.text, passwordInput.text, 1)

    KeyNavigation.up: passwordInput
  }
}
