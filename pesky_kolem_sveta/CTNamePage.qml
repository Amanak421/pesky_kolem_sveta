import QtQuick 2.12
import QtQuick.Controls 2.12

Page {
    id: ctnamePage

    anchors.fill: parent // vyplní celou obrazovku

    Button{
        id: back

        text: "Zpět"

        onClicked: {
            setupStackView.push(mainMenuPage);
        }

    }

    Button{
        id: contin

        text: "Dál"

        anchors.centerIn: parent

        onClicked: {
            ctStackView.push(memNamePage);
        }

    }

}
