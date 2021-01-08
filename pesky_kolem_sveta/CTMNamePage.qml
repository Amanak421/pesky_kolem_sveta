import QtQuick 2.12
import QtQuick.Controls 2.12

Page {

    anchors.fill: parent // vyplní celou obrazovku

    Button{
        id: back

        text: "Zpět"

        onClicked: {
            ctStackView.push(namePage);
        }

    }

    Button{
        id: contin

        text: "Dál"

        anchors.left: back.right

        onClicked: {
            ctStackView.push(colorPage);
        }

    }

}
