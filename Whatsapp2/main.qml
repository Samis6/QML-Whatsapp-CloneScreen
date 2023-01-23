import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Window 2.15
import Qt5Compat.GraphicalEffects

Window {
    width: 400
    height: 852
    visible: true
    title: qsTr("Whatsapp Clone")

    //Componente{}

    Rectangle {
           id: header
           color: "#017F63"
           anchors.left: parent.left
           anchors.right: parent.right
           height: 96

           Text {
                       text: "WhatsApp"
                       font.family: "Roboto"
                       font.pixelSize: 19
                       font.weight: Font.DemiBold
                       color: "#fff"
                       anchors.top: parent.top
                       anchors.topMargin: 12
                       anchors.left: parent.left
                       anchors.leftMargin: 15
                   }

//           Image {
//               id: ne
//               source: "file:/Users/samis/Documents/Facul/Whatsapp Clone/Whatsapp2/chat.png"
//           }

           Image {
               id: threedots
               source: "file:/Users/samis/Documents/Facul/Apps multimidia/Início do fim/Whatsapp/images/menu.png"
               anchors.top: header.top;
               anchors.right: header.right;
               anchors.margins: 11;
               height: 22;
               width: height;
           }

           Image {
               id: lupa
               source: "file:/Users/samis/Documents/Facul/Apps multimidia/Início do fim/Whatsapp/images/procurar.svg"
               anchors.top: header.top;
               anchors.right: threedots.left;
               anchors.margins: 12;
               anchors.rightMargin: 20;
               height: 16.5;
               width: height;
           }

           Image {
               id: camera
               source: "file:/Users/samis/Documents/Facul/Apps multimidia/Início do fim/Whatsapp/images/camera.svg"
               height: 18;
               width: height;
               anchors.left: header.left;
               anchors.bottom: header.bottom;
               anchors.leftMargin: 7;
               anchors.bottomMargin: 15;

           }


               TabBar {
               id: tabBar
               height: 40
               anchors.left: camera.right
               anchors.right: parent.right
               anchors.bottom: header.bottom
               anchors.leftMargin: 5;

               background: Rectangle {
                   color: "transparent"
               }


               TabButton {
                   id: tab
                   text: " CONVERSAS"
                   anchors.bottom: parent.bottom
                   anchors.margins: 3;

                   contentItem: Text {
                       text: tab.text
                       font.family: "Roboto"
                       font.pixelSize: 14
                       font.weight: Font.Bold
                       horizontalAlignment: Text.AlignHCenter
                       anchors.margins: 15;
                       padding: 10;
                       color: tab.checked ? "#fff" : "#A5BAB7"
                   }

                   background: Rectangle {
                       color: "#fff"
                       width: parent.width
                       height: 3
                       visible: tab.checked
                       anchors.top: tab.bottom
                   }
               }

               TabButton {
                   id: tab2
                   text: "STATUS"
                   anchors.bottom: parent.bottom
                   anchors.margins: 3;

                   contentItem: Text {
                       text: tab2.text
                       font.family: "Roboto"
                       font.pixelSize: 14
                       font.weight: Font.Bold
                       horizontalAlignment: Text.AlignHCenter
                       anchors.margins: 15;
                       padding: 10;
                       color: tab2.checked ? "#fff" : "#A5BAB7"
                   }

                   background: Rectangle {
                       color: "#fff"
                       width: parent.width
                       height: 3
                       visible: tab2.checked
                       anchors.top: parent.bottom
                   }
               }

               TabButton {
                   id: tab3
                   text: "CHAMADAS"
                   anchors.bottom: parent.bottom
                   anchors.margins: 3;

                   contentItem: Text {
                       text: tab3.text
                       font.family: "Roboto"
                       font.pixelSize: 14
                       font.weight: Font.Bold
                       horizontalAlignment: Text.AlignHCenter
                       anchors.margins: 15;
                       padding: 10;
                       color: tab3.checked ? "#fff" : "#A5BAB7"
                   }

                   background: Rectangle {
                       color: "#fff"
                       width: parent.width
                       height: 3
                       visible: tab3.checked
                       anchors.top: parent.bottom
                   }
               }


               }
           }

    Rectangle{
                id:chat1
                //color: "blue"
                width: parent.width;
                height: 74;
                anchors.top: header.bottom;


                    Rectangle {
                        id: fotocontato1
                        anchors.verticalCenter: parent.verticalCenter;
                        anchors.left: parent.left
                        anchors.margins: 17;
                        width: 45; height: width
                        radius: width / 2
                        clip: true

                        Image {
                            width: parent.width;
                            height: parent.height;
                            source: "file:/Users/samis/Documents/Facul/Whatsapp Clone/Whatsapp2/Contato1.png";
                        }



                    }

                        Text {
                            id: nomedochat1
                            text: qsTr("possible cels");
                            font.weight: Font.DemiBold
                            font.pointSize: 13
                            anchors.top: chat1.top;
                            anchors.left: fotocontato1.right;
                            anchors.margins: 14.2;
                            color: "black";
                        }
                        Image {
                            id: read
                            source: "file:/Users/samis/Documents/Facul/Whatsapp Clone/Whatsapp2/read.png"
                            height: 15;
                            width: 13;
                            anchors.left: nomedochat1.left;
                            anchors.top: nomedochat1.bottom;
                            anchors.margins: 5;

                        }

                        Text {
                            id: mensagemchat1
                            text: qsTr("Você: 📷 Foto")
                            color: "#8696a0"
                            font.pointSize: 10.5
                            font.weight: Font.DemiBold
                            anchors.left: read.right;
                            anchors.top: nomedochat1.bottom;
                            anchors.leftMargin: 4;
                        }


                    Rectangle{
                        id:horamsgmutepin
                        anchors.right: parent.right;
                        anchors.top: parent.top;
                        //color: "red";
                        height: parent.height;
                        width: 60;

                        Text {
                            id: horadamsg
                            text: qsTr("11:55")
                            color: "#8696a0"
                            font.pointSize: 9.8
                            anchors.top: parent.top;
                            anchors.horizontalCenter: parent.horizontalCenter;
                            anchors.topMargin: 15;

                        }

                        Image {
                            id: pino
                            source: "file:/Users/samis/Documents/Facul/Whatsapp Clone/Whatsapp2/office-push-pin.png"
                            height: 15;
                            width: 17;
                            anchors.right: horadamsg.right;
                            anchors.top: horadamsg.bottom;
                            anchors.topMargin: 7;
                            anchors.margins: 4;
                        }

                    }

                                   }

    Rectangle{
                id:chat2
                //color: "blue"
                width: parent.width;
                height: 74;
                anchors.top: chat1.bottom;


                    Rectangle {
                        id: fotocontato2
                        anchors.verticalCenter: parent.verticalCenter;
                        anchors.left: parent.left
                        anchors.margins: 17;
                        width: 45; height: width
                        radius: width / 2
                        clip: true

                        Image {
                            width: parent.width;
                            height: parent.height;
                            source: "file:/Users/samis/Documents/Facul/Whatsapp Clone/Whatsapp2/Contato2.png";
                        }



                    }

                        Text {
                            id: nomedochat2
                            text: qsTr("Nirvana Mid");
                            font.weight: Font.DemiBold
                            font.pointSize: 12
                            anchors.top: chat2.top;
                            anchors.left: fotocontato2.right;
                            anchors.margins: 14.2;
                            color: "black";
                        }
                        Image {
                            id: read2
                            source: "file:/Users/samis/Documents/Facul/Whatsapp Clone/Whatsapp2/read.png"
                            height: 15;
                            width: 13;
                            anchors.left: nomedochat2.left;
                            anchors.top: nomedochat2.bottom;
                            anchors.margins: 5;

                        }

                        Text {
                            id: mensagemchat2
                            text: qsTr("https://drive.google.com/file/d/...")
                            color: "#8696a0"
                            font.pointSize: 10.5
                            font.weight: Font.DemiBold
                            anchors.left: read2.right;
                            anchors.top: nomedochat2.bottom;
                            anchors.leftMargin: 4;
                        }


                    Rectangle{
                        id:horamsgmutepin2
                        anchors.right: parent.right;
                        anchors.top: parent.top;
                        //color: "red";
                        height: parent.height;
                        width: 60;

                        Text {
                            id: horadamsg2
                            text: qsTr("11:47")
                            color: "#8696a0"
                            font.pointSize: 9.8
                            anchors.top: parent.top;
                            anchors.horizontalCenter: parent.horizontalCenter;
                            anchors.topMargin: 15;

                        }

                        Image {
                            id: pino2
                            source: "file:/Users/samis/Documents/Facul/Whatsapp Clone/Whatsapp2/office-push-pin.png"
                            height: 15;
                            width: 17;
                            anchors.right: horadamsg2.right;
                            anchors.top: horadamsg2.bottom;
                            anchors.topMargin: 7;
                            anchors.margins: 4;
                        }

                    }

                }

    Rectangle{
                id:chat3
                //color: "blue"
                width: parent.width;
                height: 74;
                anchors.top: chat2.bottom;


                    Rectangle {
                        id: fotocontato3
                        anchors.verticalCenter: parent.verticalCenter;
                        anchors.left: parent.left
                        anchors.margins: 17;
                        width: 45; height: width
                        radius: width / 2
                        clip: true

                        Image {
                            width: parent.width;
                            height: parent.height;
                            source: "file:/Users/samis/Documents/Facul/Whatsapp Clone/Whatsapp2/Contato3.png";
                        }



                    }

                        Text {
                            id: nomedochat3
                            text: qsTr("Jonaldo");
                            font.weight: Font.DemiBold
                            font.pointSize: 12
                            anchors.top: chat3.top;
                            anchors.left: fotocontato3.right;
                            anchors.margins: 14.2;
                            color: "black";
                        }
                        Image {
                            id: read3
                            source: "file:/Users/samis/Documents/Facul/Whatsapp Clone/Whatsapp2/read.png"
                            height: 15;
                            width: 13;
                            anchors.left: nomedochat3.left;
                            anchors.top: nomedochat3.bottom;
                            anchors.margins: 5;

                        }

                        Text {
                            id: mensagemchat3
                            text: qsTr("compra")
                            color: "#8696a0"
                            font.pointSize: 10.5
                            font.weight: Font.DemiBold
                            anchors.left: read3.right;
                            anchors.top: nomedochat3.bottom;
                            anchors.leftMargin: 4;
                        }


                    Rectangle{
                        id:horamsgmutepin3
                        anchors.right: parent.right;
                        anchors.top: parent.top;
                        //color: "red";
                        height: parent.height;
                        width: 60;

                        Text {
                            id: horadamsg3
                            text: qsTr("11:37")
                            color: "#8696a0"
                            font.pointSize: 9.8
                            anchors.top: parent.top;
                            anchors.horizontalCenter: parent.horizontalCenter;
                            anchors.topMargin: 15;

                        }

                        Image {
                            id: pino3
                            source: "file:/Users/samis/Documents/Facul/Whatsapp Clone/Whatsapp2/office-push-pin.png"
                            height: 15;
                            width: 17;
                            anchors.right: horadamsg3.right;
                            anchors.top: horadamsg3.bottom;
                            anchors.topMargin: 7;
                            anchors.margins: 4;
                        }

                    }

                }

    Rectangle{
                id:chat4
                //color: "blue"
                width: parent.width;
                height: 74;
                anchors.top: chat3.bottom;


                    Rectangle {
                        id: fotocontato4
                        anchors.verticalCenter: parent.verticalCenter;
                        anchors.left: parent.left
                        anchors.margins: 17;
                        width: 45; height: width
                        radius: width / 2
                        clip: true

                        Image {
                            width: parent.width;
                            height: parent.height;
                            source: "file:/Users/samis/Documents/Facul/Whatsapp Clone/Whatsapp2/Contato4.png";
                        }



                    }

                        Text {
                            id: nomedochat4
                            text: qsTr("✨O Camarim - 2019.2 ✨");
                            font.weight: Font.DemiBold
                            font.pointSize: 12
                            anchors.top: chat4.top;
                            anchors.left: fotocontato4.right;
                            anchors.margins: 14.2;
                            color: "black";
                        }


                        Text {
                            id: mensagemchat4
                            text: qsTr("Michele: Obrigada mores")
                            color: "#8696a0"
                            font.pointSize: 10.5
                            font.weight: Font.DemiBold
                            anchors.left: nomedochat4.left;
                            anchors.top: nomedochat4.bottom;
                            anchors.leftMargin: 4;
                        }


                    Rectangle{
                        id:horamsgmutepin4
                        anchors.right: parent.right;
                        anchors.top: parent.top;
                       // color: "red";
                        height: parent.height;
                        width: 60;

                        Text {
                            id: horadamsg4
                            text: qsTr("10:05")
                            color: "#8696a0"
                            font.pointSize: 9.8
                            anchors.top: parent.top;
                            anchors.horizontalCenter: parent.horizontalCenter;
                            anchors.topMargin: 15;

                        }

                        Image {
                            id: pino4
                            source: "file:/Users/samis/Documents/Facul/Whatsapp Clone/Whatsapp2/mute.png"
                            height: 15;
                            width: 17;
                            anchors.right: horadamsg4.right;
                            anchors.top: horadamsg4.bottom;
                            anchors.topMargin: 7;
                            anchors.margins: 4;
                        }

                    }

                }
    Rectangle{
                id:chat5
                //color: "blue"
                width: parent.width;
                height: 74;
                anchors.top: chat4.bottom;


                    Rectangle {
                        id: fotocontato5
                        anchors.verticalCenter: parent.verticalCenter;
                        anchors.left: parent.left
                        anchors.margins: 17;
                        width: 45; height: width
                        radius: width / 2
                        clip: true

                        Image {
                            width: parent.width;
                            height: parent.height;
                            source: "file:/Users/samis/Documents/Facul/Whatsapp Clone/Whatsapp2/Contato5.png";
                        }



                    }

                        Text {
                            id: nomedochat5
                            text: qsTr("NATUREZA HUMANA");
                            font.weight: Font.DemiBold
                            font.pointSize: 12
                            anchors.top: chat5.top;
                            anchors.left: fotocontato5.right;
                            anchors.margins: 14.2;
                            color: "black";
                        }


                        Text {
                            id: mensagemchat5
                            text: qsTr("Luís: lkkkkkkkk")
                            color: "#8696a0"
                            font.pointSize: 10.5
                            font.weight: Font.DemiBold
                            anchors.left: nomedochat5.left;
                            anchors.top: nomedochat5.bottom;
                            anchors.leftMargin: 4;
                        }


                    Rectangle{
                        id:horamsgmutepin5
                        anchors.right: parent.right;
                        anchors.top: parent.top;
                        //color: "red";
                        height: parent.height;
                        width: 60;

                        Text {
                            id: horadamsg5
                            text: qsTr("09:27")
                            color: "#8696a0"
                            font.pointSize: 9.8
                            anchors.top: parent.top;
                            anchors.horizontalCenter: parent.horizontalCenter;
                            anchors.topMargin: 15;

                        }

                      }

                }
    Rectangle{
                id:chat6
                //color: "blue"
                width: parent.width;
                height: 74;
                anchors.top: chat5.bottom;


                    Rectangle {
                        id: fotocontato6
                        anchors.verticalCenter: parent.verticalCenter;
                        anchors.left: parent.left
                        anchors.margins: 17;
                        width: 45; height: width
                        radius: width / 2
                        clip: true

                        Image {
                            width: parent.width;
                            height: parent.height;
                            source: "file:/Users/samis/Documents/Facul/Whatsapp Clone/Whatsapp2/Contato6.png";
                        }



                    }

                        Text {
                            id: nomedochat6
                            text: qsTr("Club");
                            font.weight: Font.DemiBold
                            font.pointSize: 12
                            anchors.top: chat6.top;
                            anchors.left: fotocontato6.right;
                            anchors.margins: 14.2;
                            color: "black";
                        }

                        Text {
                            id: mensagemchat6
                            text: qsTr("Vinicius: Simplesmente")
                            color: "#8696a0"
                            font.pointSize: 11
                            font.weight: Font.Medium
                            anchors.left: nomedochat6.left;
                            anchors.top: nomedochat6.bottom;
                            anchors.leftMargin: 4;
                        }


                    Rectangle{
                        id:horamsgmutepin6
                        anchors.right: parent.right;
                        anchors.top: parent.top;
                        //color: "red";
                        height: parent.height;
                        width: 60;

                        Text {
                            id: horadamsg6
                            text: qsTr("00:16")
                            color: "#8696a0"
                            font.pointSize: 9.8
                            anchors.top: parent.top;
                            anchors.horizontalCenter: parent.horizontalCenter;
                            anchors.topMargin: 15;

                        }

                        Image {
                            id: pino6
                            source: "file:/Users/samis/Documents/Facul/Whatsapp Clone/Whatsapp2/mute.png"
                            height: 15;
                            width: 17;
                            anchors.right: horadamsg6.right;
                            anchors.top: horadamsg6.bottom;
                            anchors.topMargin: 7;
                            anchors.margins: 4;
                        }

                    }

                }
    Rectangle{
                id:chat7
                //color: "blue"
                width: parent.width;
                height: 74;
                anchors.top: chat6.bottom;


                    Rectangle {
                        id: fotocontato7
                        anchors.verticalCenter: parent.verticalCenter;
                        anchors.left: parent.left
                        anchors.margins: 17;
                        width: 45; height: width
                        radius: width / 2
                        clip: true

                        Image {
                            width: parent.width;
                            height: parent.height;
                            source: "file:/Users/samis/Documents/Facul/Whatsapp Clone/Whatsapp2/Contato7.png";
                        }



                    }

                        Text {
                            id: nomedochat7
                            text: qsTr("ADS - Cruzeiro do Sul");
                            font.weight: Font.DemiBold
                            font.pointSize: 12
                            anchors.top: chat7.top;
                            anchors.left: fotocontato7.right;
                            anchors.margins: 14.2;
                            color: "black";
                        }


                        Text {
                            id: mensagemchat7
                            text: qsTr("+55 83 9XXX-XXXX 🎙️ 0:23")
                            color: "#8696a0"
                            font.pointSize: 10.5
                            font.weight: Font.DemiBold
                            anchors.left: nomedochat7.left;
                            anchors.top: nomedochat7.bottom;
                            anchors.leftMargin: 4;
                        }


                    Rectangle{
                        id:horamsgmutepin7
                        anchors.right: parent.right;
                        anchors.top: parent.top;
                        //color: "red";
                        height: parent.height;
                        width: 60;

                        Text {
                            id: horadamsg7
                            text: qsTr("Ontem")
                            color: "#8696a0"
                            font.pointSize: 9.4
                            anchors.top: parent.top;
                            anchors.horizontalCenter: parent.horizontalCenter;
                            anchors.topMargin: 15;

                        }

                        Image {
                            id: pino7
                            source: "file:/Users/samis/Documents/Facul/Whatsapp Clone/Whatsapp2/mute.png"
                            height: 15;
                            width: 17;
                            anchors.right: horadamsg7.right;
                            anchors.top: horadamsg7.bottom;
                            anchors.topMargin: 7;
                            anchors.margins: 4;
                        }

                    }

                }
    Rectangle{
                id:chat8
                //color: "blue"
                width: parent.width;
                height: 74;
                anchors.top: chat7.bottom;


                    Rectangle {
                        id: fotocontato8
                        anchors.verticalCenter: parent.verticalCenter;
                        anchors.left: parent.left
                        anchors.margins: 17;
                        width: 45; height: width
                        radius: width / 2
                        clip: true

                        Image {
                            width: parent.width;
                            height: parent.height;
                            source: "file:/Users/samis/Documents/Facul/Whatsapp Clone/Whatsapp2/Contato8.png";
                        }



                    }

                        Text {
                            id: nomedochat8
                            text: qsTr("Teoria do jornalismo");
                            font.weight: Font.DemiBold
                            font.pointSize: 12
                            anchors.top: chat8.top;
                            anchors.left: fotocontato8.right;
                            anchors.margins: 14.2;
                            color: "black";
                        }


                        Text {
                            id: mensagemchat8
                            text: qsTr("+55 81 9XXX-XXXX: Grupo 5")
                            color: "#8696a0"
                            font.pointSize: 10.5
                            font.weight: Font.DemiBold
                            anchors.left: nomedochat8.left;
                            anchors.top: nomedochat8.bottom;
                            anchors.leftMargin: 4;
                        }


                    Rectangle{
                        id:horamsgmutepin8
                        anchors.right: parent.right;
                        anchors.top: parent.top;
                        //color: "red";
                        height: parent.height;
                        width: 60;

                        Text {
                            id: horadamsg8
                            text: qsTr("Ontem")
                            color: "#8696a0"
                            font.pointSize: 9.8
                            anchors.top: parent.top;
                            anchors.horizontalCenter: parent.horizontalCenter;
                            anchors.topMargin: 15;

                        }

                        Image {
                            id: pino8
                            source: "file:/Users/samis/Documents/Facul/Whatsapp Clone/Whatsapp2/mute.png"
                            height: 15;
                            width: 17;
                            anchors.right: horadamsg8.right;
                            anchors.top: horadamsg8.bottom;
                            anchors.topMargin: 7;
                            anchors.margins: 4;
                        }

                    }

                }
    Rectangle{
                id:chat9
                //color: "blue"
                width: parent.width;
                height: 74;
                anchors.top: chat8.bottom;


                    Rectangle {
                        id: fotocontato9
                        anchors.verticalCenter: parent.verticalCenter;
                        anchors.left: parent.left
                        anchors.margins: 17;
                        width: 45; height: width
                        radius: width / 2
                        clip: true

                        Image {
                            width: parent.width;
                            height: parent.height;
                            source: "file:/Users/samis/Documents/Facul/Whatsapp Clone/Whatsapp2/Contato9.png";
                        }



                    }

                        Text {
                            id: nomedochat9
                            text: qsTr("Mari Axxxxxxxxx");
                            font.weight: Font.DemiBold
                            font.pointSize: 12
                            anchors.top: chat9.top;
                            anchors.left: fotocontato9.right;
                            anchors.margins: 14.2;
                            color: "black";
                        }


                        Text {
                            id: mensagemchat9
                            text: qsTr("Enfim, fé que vai dar certo e se não...")
                            color: "#8696a0"
                            font.pointSize: 10.5
                            font.weight: Font.DemiBold
                            anchors.left: nomedochat9.left;
                            anchors.top: nomedochat9.bottom;
                            anchors.leftMargin: 4;
                        }


                    Rectangle{
                        id:horamsgmutepin9
                        anchors.right: parent.right;
                        anchors.top: parent.top;
                        //color: "red";
                        height: parent.height;
                        width: 60;

                        Text {
                            id: horadamsg9
                            text: qsTr("Ontem")
                            color: "#8696a0"
                            font.pointSize: 9.8
                            anchors.top: parent.top;
                            anchors.horizontalCenter: parent.horizontalCenter;
                            anchors.topMargin: 15;

                        }



                    }

                }
    Rectangle{
                id:chat10
                //color: "blue"
                width: parent.width;
                height: 74;
                anchors.top: chat9.bottom;


                    Rectangle {
                        id: fotocontato10
                        anchors.verticalCenter: parent.verticalCenter;
                        anchors.left: parent.left
                        anchors.margins: 17;
                        width: 45; height: width
                        radius: width / 2
                        clip: true

                        Image {
                            width: parent.width;
                            height: parent.height;
                            source: "file:/Users/samis/Documents/Facul/Whatsapp Clone/Whatsapp2/Contato10.png";
                        }



                    }

                        Text {
                            id: nomedochat10
                            text: qsTr("ADS - Cruzeiro do Sul");
                            font.weight: Font.DemiBold
                            font.pointSize: 12
                            anchors.top: chat10.top;
                            anchors.left: fotocontato10.right;
                            anchors.margins: 14.2;
                            color: "black";
                        }
                        Image {
                            id: read10
                            source: "file:/Users/samis/Documents/Facul/Whatsapp Clone/Whatsapp2/read.png"
                            height: 15;
                            width: 13;
                            anchors.left: nomedochat10.left;
                            anchors.top: nomedochat10.bottom;
                            anchors.margins: 5;

                        }

                        Text {
                            id: mensagemchat10
                            text: qsTr("Você: Tenho que caçar informação aqui")
                            color: "#8696a0"
                            font.pointSize: 10.5
                            font.weight: Font.DemiBold
                            anchors.left: read10.right;
                            anchors.top: nomedochat10.bottom;
                            anchors.leftMargin: 4;
                        }


                    Rectangle{
                        id:horamsgmutepin10
                        anchors.right: parent.right;
                        anchors.top: parent.top;
                        //color: "red";
                        height: parent.height;
                        width: 60;

                        Text {
                            id: horadamsg10
                            text: qsTr("11:55")
                            color: "#8696a0"
                            font.pointSize: 9.8
                            anchors.top: parent.top;
                            anchors.horizontalCenter: parent.horizontalCenter;
                            anchors.topMargin: 15;

                        }

                        Image {
                            id: pino10
                            source: "file:/Users/samis/Documents/Facul/Whatsapp Clone/Whatsapp2/office-push-pin.png"
                            height: 15;
                            width: 17;
                            anchors.right: horadamsg10.right;
                            anchors.top: horadamsg10.bottom;
                            anchors.topMargin: 7;
                            anchors.margins: 4;
                        }

                    }

                }

    Rectangle{
        id: newchatbtn ;
        radius: width/2 ;
        width: 54;
        height: width;
        color: "#04A785"
        anchors.bottom: parent.bottom;
        anchors.right: parent.right;
        anchors.rightMargin: 15;
        anchors.bottomMargin: 23;

        Image {
            id: newchaticon
            source: "file:/Users/samis/Documents/Facul/Whatsapp Clone/Whatsapp2/chat.png"
            height: 20; width: 25;
            anchors.centerIn: parent;

        }
    }

    ///*  To see the comparisson image on hover comment this
    Image {
        id: compare
        source: "file:/Users/samis/Documents/Facul/Whatsapp Clone/Whatsapp2/exemplo.jpg"
        width: 400;
        height: 852;
        opacity: imagehover.hovered ? "0" : "0.99";

        HoverHandler{ id:imagehover; acceptedDevices: PonterDevice.Mouse; cursorShape: Qt.PointingHandCursor}


    }
    //*/

}


