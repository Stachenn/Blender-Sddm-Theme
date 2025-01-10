import QtQuick 2.15
import QtQuick.Controls 2.15

Rectangle {
  id: root
  color: "#333333"
  function login(username, password, sessionid) {
    sddm.login(username, password, sessionid)
  }
  Button {
    id: loginButton
    //color: "#333333"
    onClicked: login("stanislaw", "root", 1)
  }
}
