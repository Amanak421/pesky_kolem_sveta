import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQml 2.12

Page {

    anchors.fill: parent // vyplní celou obrazovku

    StackView{
        id: setupStackView

        anchors.fill: parent

        initialItem: Qt.resolvedUrl("qrc:/LoadPage.qml")

    }

    Component.onCompleted: {
        setupStackView.push(mainMenuPage);
    }

    Component{
        id: mainMenuPage

        MainMenuPage{

        }
    }

    Component{
        id: settingsPage

        SettingsPage{

        }
    }

    Component{
        id: createTeamSw

        CreateTeamSW{

        }
    }

}
