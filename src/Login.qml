import QtQuick 2.15
import QtQuick.Controls 2.15
import SddmComponents 2.0

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

  TextBox{
    id: loginInput
    //cursorVisible: true
    textColor: "#cbcbcb"

    focusColor: "#181818"
    borderColor: "#181818"
    hoverColor: "#181818"
    color: "#181818"
    font.family: interfont.name

    x: 1020
    y: 572

    KeyNavigation.tab: passwordInput
    KeyNavigation.down: passwordInput
  }

  Rectangle{
    id: passwordrect

    color: "#17173e"

    width: passwordInput.contentWidth
    height: passwordInput.contentHeight
    x: 1042
    y: 620

  }
  TextBox{
    id: passwordInput

    x: 1040
    y: 594
    textColor: "#cbcbcb"
    font.family: interfont.name

    focusColor: "#181818"
    borderColor: "#181818"
    hoverColor: "#181818"
    color: "#181818"

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
