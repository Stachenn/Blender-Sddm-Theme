import QtQuick 2.15
import QtQuick.Controls 2.15
import SddmComponents 2.0
// i hate this lib
// just kidding ;)

Rectangle{
  id: main
  property bool lastState: false
  // Definition property`s aka varibles

  FontLoader {
    id: interfont
    source: "../res/fonts/Inter.ttf"
  }
  Image {
    id: mainImage
    source: "../res/minimalized.png"
  }
  Login {
    id: loginForm
  }

  Fullscreen{
    id: fullscreenButton
  }

  SessionSelection{
    id:sessionSelection
  }
  // Initialization included files & background & font
  ActionButtons{
    id: actionButtons
  }
  Button{

    id: ti
    opacity: 0
    x: 960
    y: 900
    property var s: []
    onClicked: debug.log()
  }
  DebugLog {

    id: debug
    size: 30

    posX: 960
    posY: 540
    color: "white"
  }
  // Debug stuff`s
}
