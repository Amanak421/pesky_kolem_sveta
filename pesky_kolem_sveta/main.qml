import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.12
import QtQml 2.12

Window {
    id:mainWindow
    width: 440
    height: 700
    visible: true
    title: qsTr("Pěšky kolem světa")

    StackView{      // vytvoří stackview pro celou aplikaci
        id: mainStackView

        anchors.fill: parent
        initialItem: Qt.resolvedUrl("qrc:/LoadPage.qml") // nastaví uvodní stránku než se načte aplikace

    }

    Component.onCompleted: {    // po načtení všech component zobrazí úvodní menu
        mainStackView.push(setupSW);
    }

    Component{
        id: loadPage

        LoadPage{

        }
    }

    Component{      // vytváří jednotlivé stránky
        id: setupSW

        MainMenuSW{

        }
    }

    Component{
        id: gameSW

        GameSW{
            anchors.fill: parent
        }
    }


}
