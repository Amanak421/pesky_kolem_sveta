import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.12
import QtQml 2.12

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Pěšky kolem světa")

    StackView{
        id: mainStackView

        anchors.fill: parent
        initialItem: Qt.resolvedUrl("qrc:/LoadPage.qml") // uvodní stránka

    }

    Component.onCompleted: {
        mainStackView.push("qrc:/MainMenuPage.qml");
    }

    Component{
        id: mainMenuPage

        MainMenuPage{
            anchors.fill: parent
        }
    }

    Component{
        id: settingsPage

        SettingsPage{
            anchors.fill: parent
        }
    }

    Component{
        id: stnamePage

        CTNamePage{
            anchors.fill: parent
        }
    }


}
