import QtQuick 2.15
import QtQuick.Controls 2.15
import SddmComponents 2.0

Rectangle {
  id: buttons
  property alias powerbt : powerbt
  property alias hibernatebt : hibernatebt
  property alias rebootbt : rebootbt
  property int buttonOpacity: 0

  Button{
    id: powerbt

    x: 970
    y: 648
    height: 12

    opacity: buttonOpacity

    onClicked: {
      if (sddm.canPowerOff == true){
        sddm.powerOff()
      }
    }
  }
  Button{
    id: hibernatebt

    x: 970
    y: 668
    height: 12

    opacity: buttonOpacity

    onClicked: {
      if (sddm.canHibernate == true){
        sddm.hibernate()
      }
    }
  }
  Button{
    id: rebootbt

    x: 970
    y: 687
    height: 12

    opacity: buttonOpacity

    onClicked: {
      if (sddm.canReboot == true){
        sddm.reboot()
      }
    }
  }
}
