// Dialogs.qml
import QtQuick
import QtQuick.Dialogs
import QtQuick.Controls
import QtMultimedia
Item{
    property alias about: _about



    // 帮助对话框
    MessageDialog{
        id:_about
        modality: Qt.WindowModal
        buttons:MessageDialog.Ok
        text:"This is a simple vide player"
        informativeText: qsTr("Freemusic is a free software, and you can download its source code from www.open-src.com")
        detailedText: "Copyright©2024 xiexuelian (1798969261@qq.com)"
    }
}
