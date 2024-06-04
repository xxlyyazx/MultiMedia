import QtQuick
import QtQuick.Controls
Item {
    property alias openAction: open
    property alias exitAction: quit
    property alias recentOpenAction: recentOpen
    property alias stretchAction: stretch
    property alias playVideoAction: playVideo
    property alias nextVideoAction: nextVideo
    property alias previousVideoAction: previousVideo
    property alias rebroadcastAction: rebroadcast
    property alias multiplySpeedAction: multiplySpeed
    property alias muteAction: mute
    property alias raiseVolumeAction: raiseVolume
    property alias downVolumeAction: downVolume
    property alias aboutAction: about

    Action {
        id: open
        text: qsTr("打开文件")
        icon.name: "document-open"
        shortcut: "StandardKey.Open"
    }

    Action {
        id:recentOpen
        text: qsTr("     最近文件")

    }

    Action {
        id: quit
        text: qsTr("退出")
        icon.name: "application-exit"
        shortcut: "StandardKey.Exit"
    }

    Action {
        id:stretch
        text: qsTr("进入/退出全屏模式")
        icon.name: "view-fullscreen"

    }

    Action {
        id: playVideo
        text: qsTr("播放/暂停")
        icon.name:"media-playback-pause"
        shortcut: ""
    }

    Action {
        id: nextVideo
        text: qsTr("播放下一个")
        icon.name: "media-skip-forward"
        shortcut: ""
    }

    Action {
        id: previousVideo
        text: qsTr("播放上一个")
        icon.name: "media-skip-backward"
        shortcut: ""
    }

    Action {
        id: rebroadcast
        text: qsTr("重新开始播放")
        icon.name: "media-playlist-shuffle"
        shortcut: ""
    }

    Action {
        id: multiplySpeed
        text: qsTr("倍速")
    }

    Action{
        id: mute
        text: qsTr("静音")
        icon.name: "audio-volume-muted"
        shortcut: "audio-volume-muted"
    }

    Action {
        id: raiseVolume
        text: qsTr("提高音量")
        icon.name: "audio-volume-high"
    }

    Action {
        id: downVolume
        text: qsTr("降低音量")
        icon.name: "audio-volume-low"
    }

    Action {
        id: about
        text: qsTr("关于")
        icon.name: "help-about"

    }


}
