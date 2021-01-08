import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQml 2.12

Page {

    anchors.fill: parent // vyplní celou obrazovku

    StackView{
        id: ctStackView

        anchors.fill: parent

        initialItem: namePage

    }


    Component{
        id: namePage

        CTNamePage{

        }
    }

    Component{
        id: memNamePage

        CTMNamePage{

        }
    }

    Component{
        id: colorPage

        CTColorPage{

        }
    }

    Component{
        id: recapPage

        CTRecapPage{

        }
    }

}
