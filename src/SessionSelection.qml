import QtQuick 2.15
import QtQuick.Controls 2.15

Rectangle {
  id: root
  color: "#333333"
  property string sessions: "s";

  function getSessionsNames(){
    console.log("megabekahahahhahahhahah:(")
    for (let i = 0; i < sessionModel.lastIndex; ++i){
      console.error(sessionModel.rowCount(i))
      plswork.text = sessionModel.lastIndex
    }
    //plswork.text += "t"
  }
  Label {
    x: 100
    color: "red"
    id: plswork
    text: "wait"
  }
  Button {
    id: testButt
    text: "CLICKIT"
    onClicked: getSessionsNames()
  }

}
