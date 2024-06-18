// Window.qml
import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import "video.js" as Controller
ApplicationWindow {
    width: 1024
    height: 720
    visible: true
    title: qsTr("X-video")
    menuBar: MenuBar {
        Menu {
            title: qsTr("文件  ")
            MenuItem { action:actions.open }
            MenuItem { action:actions.recentOpen}
            MenuItem { action:actions.exit }
        }
        Menu{
            title: qsTr("视图   ")
            // 全屏或者退出全屏
            MenuItem{action: actions.stretch}
        }
        Menu{
            title:qsTr("播放   ")
            // 播放/暂停
            MenuItem{action: actions.playVideo}
            //  下个视频
            MenuItem{action: actions.nextVideo }
            // 上个视频
            MenuItem{action: actions.previousVideo}
            // 重新播放
            MenuItem{action: actions.rebroadcast}
            // 倍速
            Menu{
                title: qsTr("倍数")
                MenuItem{action:actions.slowSpeed}
                MenuItem{action:actions.normalSpeed}
                MenuItem{action: actions.upSpeed}
            }
            Menu{
                title: qsTr("音频   ")
                // 静音
                MenuItem{action: actions.mute}
                // 提高音量
                MenuItem{action: actions.raiseVolume}
                // 降低音量
                MenuItem{action: actions.downVolume}
            }

        }
        Menu{
            title: qsTr("帮助   ")
            // 关于
            MenuItem{action: actions.about}
        }
    }

    header: ToolBar {
        id: appToolbar
        RowLayout{
            ToolButton { action: actions.open }
            ToolButton { action: actions.recentOpen}
            ToolSeparator{}
            ToolButton { action: actions.mute}
            ToolSeparator{}
            ToolButton { action: actions.exit }
        }
    }
    // Dialogs{
    //     id:dialogComponent
    // }


    Actions {
        id: actions
        open.onTriggered: console.log("Open action triggered")
        recentOpen.onTriggered: console.log("recent action triggered")
        exit.onTriggered: Qt.quit()
        stretch.onTriggered: console.log("stretch action triggered")
        playVideo.onTriggered: console.log("pause action triggered")
        nextVideo.onTriggered: console.log("forward action triggered")
        previousVideo.onTriggered: console.log("backward action triggered")
        rebroadcast.onTriggered: console.log("reshuffle action triggered")
        slowSpeed.onTriggered: console.log("multiplySpeed action triggered")
        upSpeed.onTriggered: console.log("multiplySpeed action triggered")
        normalSpeed.onTriggered: console.log("multiplySpeed action triggered")
        mute.onTriggered: console.log("mute action triggered")
        raiseVolume.onTriggered: console.log("raiseVolume action triggered")
        downVolume.onTriggered: console.log("downVolume action triggered")
        about.onTriggered:Controller.about()

}
    Contents{
        id: content
        anchors.fill: parent
    }



    //Content Area
    TextArea {
        background: Rectangle{
            color: "white"
        }

        text: qsTr("hello, world")
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
    }
}
