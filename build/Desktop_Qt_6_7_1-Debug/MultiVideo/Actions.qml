// Actions.qml
import QtQuick
import QtQuick.Controls
Item {
    property alias open: _open
    property alias exit: _quit
    property alias recentOpen: _recentOpen
    property alias stretch: _stretch
    property alias playVideo: _playVideo
    property alias nextVideo: _nextVideo
    property alias previousVideo: _previousVideo
    property alias rebroadcast: _rebroadcast
    property alias slowSpeed: _slowSpeed
    property alias upSpeed:_upSpeed
    property alias normalSpeed: _normalSpeed
    property alias mute: _mute
    property alias raiseVolume: _raiseVolume
    property alias downVolume: _downVolume
    property alias contents: _contents
    property alias about: _about

    Action {
        id: _open
        text: qsTr("打开文件")
        icon.name: "document-open"
        shortcut: "StandardKey.Open"
    }

    Action {
        id:_recentOpen
        text: qsTr("     最近文件")

    }

    Action {
        id: _quit
        text: qsTr("退出")
        icon.name: "application-exit"
        shortcut: "Ctrl + q"
    }

    Action {
        id:_stretch
        text: qsTr("进入/退出全屏模式")
        icon.name: "view-fullscreen"
        shortcut: "F"

    }

    Action {
        id: _playVideo
        text: qsTr("播放/暂停")
        icon.name:"media-playback-pause"
        shortcut: "Space"
    }

    Action {
        id: _nextVideo
        text: qsTr("播放下一个")
        icon.name: "media-skip-forward"
        shortcut: "Shift + ,"
    }

    Action {
        id: _previousVideo
        text: qsTr("播放上一个")
        icon.name: "media-skip-backward"
        shortcut: "Shift + ."
    }

    Action {
        id: _rebroadcast
        text: qsTr("重新开始播放")
        icon.name: "media-playlist-shuffle"
        shortcut: "F5"
    }
    Action{
        id:_slowSpeed
        text: qsTr("0.5x")
    }
    Action{
        id:_upSpeed
        text: qsTr("2.0x")
    }Action{
        id:_normalSpeed
        text: qsTr("1.0x")
    }

    Action{
        id: _mute
        text: qsTr("静音")
        icon.name: "audio-volume-muted"
        shortcut: "m"
    }

    Action {
        id: _raiseVolume
        text: qsTr("提高音量")
        icon.name: "audio-volume-high"
        shortcut: "9"
    }

    Action {
        id: _downVolume
        text: qsTr("降低音量")
        icon.name: "audio-volume-low"
        shortcut: "0"
    }
    Action{
        id: _contents
        text:qsTr("&contents")
        icon.name:"help-contents"
}
    Action {
        id: _about
        text: qsTr("关于")
        icon.name: "help-about"
        shortcut: "F1"
    }
}
