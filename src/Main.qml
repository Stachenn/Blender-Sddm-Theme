import QtQuick 2.15
import QtQuick.Controls 2.15
import SddmComponents 2.0

Rectangle{
  id: main
  property bool lastState: false

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
    id: fullScreenButton
  }

  SessionSelection{
    id:sessionSelection
  }

  Button{
    id: ti
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
}
