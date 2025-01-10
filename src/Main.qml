import QtQuick 2.15
import QtQuick.Controls 2.15

Rectangle{
  //Login {
//    id: login
  //}
  //SessionSelection {
  //  id: sessel
  //}
  id: main
  property bool lastState: false

  Image {
    id: mainImage
    source: "../res/minimalized.png"
  }
  Fullscreen{
    id: fullscreenbutton
    bt.onClicked: {fullscreenscript(bt.checked)}
  }
  DebugLog {
    id: debug
    size: 30
    posX: 960
    posY: 540
    color: "white"
  }
}
