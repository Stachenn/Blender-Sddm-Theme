import QtQuick 2.15
import QtQuick.Controls 2.15
import SddmComponents 2.0

Rectangle {
  id: root

  property alias loginButton : loginButton
  property alias passwordInput : passwordInput
  property alias loginInput : loginInput

  function loginfunc(username, pass, sessionid) {
    sddm.login(username, pass, sessionid)
  }

  TextBox{
    id: loginInput

    color: "#181818"
    textColor: "#cbcbcb"
    focusColor: "#181818"
    borderColor: "#181818"
    hoverColor: "#181818"

    font.family: interfont.name
    font.pixelSize: 13

    x: 1020
    y: 573

    KeyNavigation.tab: passwordInput
    KeyNavigation.down: passwordInput
  }
  TextBox{
    id: passwordInput

    x: 1040
    y: 593

    color: "#181818"
    textColor: "#cbcbcb"
    focusColor: "#181818"
    borderColor: "#181818"
    hoverColor: "#181818"

    font.family: interfont.name
    font.pixelSize: 13

    KeyNavigation.up: loginInput
    KeyNavigation.tab: loginInput
    KeyNavigation.down: loginButton
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
