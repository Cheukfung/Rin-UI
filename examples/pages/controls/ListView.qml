import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 2.15
import RinUI
import "../../components"

ControlPage {
    id: page
    title: "ListView"

    Text {
        Layout.fillWidth: true
        typography: Typography.Body
        text: qsTr(
            "The ListView lets know you show a collection of items in a list that scrolls vertically. "
        )
    }

    Column {
        Layout.fillWidth: true
        spacing: 4

        Text {
            typography: Typography.BodyStrong
                text: "Basic ListView with Simple DataTemplate"
        }
        Frame {
            width: parent.width
            Column {
                spacing: 4
                Text {
                    width: parent.parent.width
                    text: "This is a basic ListView that has the full source code below (coming soon). \n" +
                        "Other samples on this page display only the additional markup needed customize " +
                        "the ListView like this one."
                }

                ListView {
                    id: listView
                    width: 350
                    height: 400

                    model: [
                        qsTr("Aikiyo Fuuka"),  // 风香
                        qsTr("Hayase Yuuka"),  // 邮箱
                        qsTr("Hanaoka Yuzu"),  // 柚子
                        qsTr("Kuromi Serika"),  // 芹香
                        qsTr("Kurosaki Koyuki"),  // 小雪
                        qsTr("Kuda Izuna"),  // 泉奈
                        qsTr("Okusora Ayane"),  // 绫音
                        qsTr("Saiba Midori"),  // 绿
                        qsTr("Saiba Momoi"),  // 桃
                        qsTr("Shiromi Iori"),  // 伊织
                        qsTr("Shishidou Nonomi"),  // 野宫
                        qsTr("Sunaookami Shiroko"),  // 白子😋
                        qsTr("Tendou Aris"),  // aris
                        qsTr("Ushio Noa"),  // 诺亚
                        qsTr("Yutori Natsu")  // 夏
                    ]
                }
            }
        }
    }

    Column {
        Layout.fillWidth: true
        spacing: 4

        Text {
            typography: Typography.BodyStrong
                text: "ListView with custom ListViewDelegate"
        }
        Frame {
            width: parent.width
            Column {
                spacing: 4
                Text {
                    width: parent.parent.width
                    text: "You can customize the ListViewDelegate to show some custom items. " +
                        "The ListViewDelegate is a component that defines how each delegates should look. " +
                        "You can use any QML controls inside the ListViewDelegate to create a custom contents."
                }

                ListView {
                    id: listViewWithCustom
                    width: 350
                    height: 400
                    textRole: "name"

                    // 自定义拓展区
                    delegate: ListViewDelegate {
                        // 头像：之后会出头像组件替换的
                        leftArea: Rectangle {
                            width: 32
                            height: 32
                            radius: 16
                            color: "#818181"
                        }

                        middleArea: [
                            Text {
                                Layout.alignment: Qt.AlignVCenter | Qt.AlignLeft
                                id: text
                                typography: Typography.Body
                                wrapMode: Text.Wrap
                                text: modelData.name
                            },
                            Text {
                                Layout.alignment: Qt.AlignVCenter | Qt.AlignLeft
                                typography: Typography.Caption
                                color: Theme.currentTheme.colors.textSecondaryColor
                                text: modelData.school
                            }
                        ]
                    }

                    model: [
                        { name: qsTr("Aikiyo Fuuka"), school: qsTr("Gehenna") },  // 风香
                        { name: qsTr("Hayase Yuuka"), school: qsTr("Millennium") },  // 邮箱
                        { name: qsTr("Hanaoka Yuzu"), school: qsTr("Millennium") },  // 柚子
                        { name: qsTr("Kuromi Serika"), school: qsTr("Abydos") },  // 芹香
                        { name: qsTr("Kurosaki Koyuki"), school: qsTr("Millennium") },  // 小雪
                        { name: qsTr("Kuda Izuna"), school: qsTr("Hyakkiyako") },  // 泉奈
                        { name: qsTr("Okusora Ayane"), school: qsTr("Trinity") },  // 绫音
                        { name: qsTr("Saiba Midori"), school: qsTr("Millennium") },// 绿
                        { name: qsTr("Saiba Momoi"), school: qsTr("Millennium") }, // 桃
                        { name: qsTr("Shiromi Iori"), school: qsTr("Gehenna") },  // 伊织
                        { name: qsTr("Shishidou Nonomi"), school: qsTr("Abydos") },   // 野宫
                        { name: qsTr("Sunaookami Shiroko"), school: qsTr("Abydos") }, // 白子😋
                        { name: qsTr("Tendou Aris"), school: qsTr("Gehenna") },   // Aris
                        { name: qsTr("Ushio Noa"), school: qsTr("Millennium") },  // 诺亚
                        { name: qsTr("Yutori Natsu"), school: qsTr("Trinity") }  // 夏
                    ]
                }
            }
        }
    }
}
