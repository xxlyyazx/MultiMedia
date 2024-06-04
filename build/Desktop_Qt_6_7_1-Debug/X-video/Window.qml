import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

ApplicationWindow {
    width: 1024
    height: 720
    visible: true
    title: qsTr("X-video")
    menuBar: MenuBar {
        Menu {
            title: qsTr("文件  ")
            MenuItem { action:actions.openAction }
            MenuItem { action:actions.recentOpenAction}
            MenuItem { action:actions.exitAction }
        }
        Menu{
            title: qsTr("视图   ")
            // 全屏或者退出全屏
            MenuItem{action: actions.stretchAction}
        }
        Menu{
            title:qsTr("播放   ")
            // 播放/暂停
            MenuItem{action: actions.playVideoAction}
            //  下个视频
            MenuItem{action: actions.nextVideoAction }
            // 上个视频
            MenuItem{action: actions.previousVideoAction}
            // 重新播放
            MenuItem{action: actions.rebroadcastAction}
            // 倍速
            MenuItem{action: actions.multiplySpeedAction}
        }
        Menu{
            title: qsTr("音频   ")
            // 静音
            MenuItem{action: actions.muteAction}
            // 提高音量
            MenuItem{action: actions.raiseVolumeAction}
            // 降低音量
            MenuItem{action: actions.downVolumeAction}
        }
        Menu{
            title: qsTr("帮助   ")
            // 关于
            MenuItem{action: actions.aboutAction}
        }
    }

    header: ToolBar {
        id: appToolbar
        RowLayout{
            ToolButton { action: actions.openAction }
            ToolButton { action: actions.recentOpenAction}
            ToolSeparator{}
            ToolButton { action: actions.muteAction}
            ToolSeparator{}
            ToolButton { action: actions.exitAction }
        }
    }

    Actions {
        id: actions
        openAction.onTriggered: console.log("Open action triggered")
        recentOpenAction.onTriggered: console.log("recent action triggered")
        exitAction.onTriggered: Qt.quit()
        stretchAction.onTriggered: console.log("stretch action triggered")
        playVideoAction.onTriggered: console.log("pause action triggered")
        nextVideoAction.onTriggered: console.log("forward action triggered")
        previousVideoAction.onTriggered: console.log("backward action triggered")
        rebroadcastAction.onTriggered: console.log("reshuffle action triggered")
        multiplySpeedAction.onTriggered: console.log("multiplySpeed action triggered")
        muteAction.onTriggered: console.log("mute action triggered")
        raiseVolumeAction.onTriggered: console.log("raiseVolume action triggered")
        downVolumeAction.onTriggered: console.log("downVolume action triggered")
        aboutAction.onTriggered: console.log("about action triggered")



    }

    Contents{
        id: contents
        anchors.fill: parent
    }



    //Content Area
    TextArea {
        text: qsTr("hello, world")
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
    }
}
