import QtQuick 2.12
import QtQuick.Controls 2.12

Page {
    id: mainMenuPage

    anchors.fill: parent // vyplní celou obrazovku

    Row{

        anchors.fill: parent

        Image{
            id: logo

            source: "qrc:/img/logo.png"

            anchors.top: parent.top
            anchors.left: parent.left
            anchors.right: parent.right

            height: parent.height / 3

            anchors.bottomMargin: 15

        }


        Image {
            id: create_team_button

            source: "qrc:/img/create_team.png"

            anchors.top: logo.bottom

            anchors.topMargin: 15

            width: parent.width / 2
            height: parent.height / 3

        }

        Image {
            id: settings_button

            source: "qrc:/img/settings.png"
            anchors.bottom: parent.bottom

            anchors.topMargin: 15

            width: parent.width / 2
            height: parent.height / 3

        }



    }






}
