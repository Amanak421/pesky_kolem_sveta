import QtQuick 2.12
import QtQuick.Controls 2.12

Page {
    id: mainMenuPage

    anchors.fill: parent // vyplní celou obrazovku



    Column{
        id: logo_column

        anchors.top: parent.top

        width: parent.width         // Nastaví výšku a šířku - výška je 1/3 celkové výšky
        height: parent.height / 3

        spacing: 10

        Image{      //Přidá obrázek loga
            id: logo

            source: "qrc:/img/logo.png"

            width: parent.width     // Nastaví šířku a výšku
            height: parent.height

        }


    }

    Column{
        id: second_column

        anchors.top: logo_column.bottom
        anchors.horizontalCenter: parent.horizontalCenter       // Zarovná na střed

        width: parent.width     // Nastaví šířku a výšku - výška je 2/3 celkové výšky a musí být o 10 menší aby fungoval bottomPadding
        height: parent.height - logo_column.height - 10

        spacing: 10     // Mezery mezi objekty
        bottomPadding: 10   // Ohraničení vrch a spodek
        topPadding: 10

        Image {     // Přidá tlačíto pro vytvoření nového týmu - Image (vytvoří obrázek); MouseArea (zajistí aby se na to dalo kliknout)
            id: create_team_button

            source: "qrc:/img/create_team.png"

            anchors.horizontalCenter: parent.horizontalCenter       // Zarovná na střed

            width: parent.width / 2     // Nastaví výšku a šířku - výška musí být o 10 menší kvůli kompenzaci mezer mezi objekty
            height: parent.height / 2 - 10

            MouseArea{      // Vytvoří plochu pro kliknutí přes obrázek
                anchors.fill:parent

                onClicked: {
                    mainStackView.push(ctnamePage);
                }
            }

        }

        Image {     // Přidá tlačíto nastavení - Image (vytvoří obrázek); MouseArea (zajistí aby se na to dalo kliknout)
            id: settings_button

            source: "qrc:/img/settings.png"

            anchors.horizontalCenter: parent.horizontalCenter       // Zarovná na střed

            width: parent.width / 2     // Nastaví výšku a šířku - výška musí být o 10 menší kvůli kompenzaci mezer mezi objekty
            height: parent.height / 2 - 10

            MouseArea{      // Vytvoří plochu pro kliknutí přes obrázek
                anchors.fill:parent

                onClicked: {
                    mainStackView.push(loadPage);
                }

            }

        }

    }

}
