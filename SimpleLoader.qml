import QtQuick 2.0

Rectangle {
    width: 360
    height: 360
    Row {
        width: childrenRect.width
        height: 10
        spacing: 5
        anchors.centerIn: parent

        Repeater {
            model: 4
            delegate: Rectangle {
                color: "red"

                radius: width / 2
                height: 10
                width: 10


                SequentialAnimation on opacity {
                    loops: Animation.Infinite

                    PropertyAnimation {
                        from: {
                            switch(index) {
                            case 0 : return "0.6"
                            case 1 : return "0.5"
                            case 2 : return "0.4"
                            case 3 : return "0.3"
                            }
                        }
                        to: {
                            switch(index) {
                            case 0 : return "0.3"
                            case 1 : return "0.6"
                            case 2 : return "0.5"
                            case 3 : return "0.4"
                            }
                        }
                        duration: 300
                    }
                    PropertyAnimation {
                        from: {
                            switch(index) {
                            case 0 : return "0.3"
                            case 1 : return "0.6"
                            case 2 : return "0.5"
                            case 3 : return "0.4"
                            }
                        }
                        to: {
                            switch(index) {
                            case 0 : return "0.4"
                            case 1 : return "0.3"
                            case 2 : return "0.6"
                            case 3 : return "0.5"
                            }
                        }
                        duration: 300
                    }
                    PropertyAnimation {
                        from: {
                            switch(index) {
                            case 0 : return "0.4"
                            case 1 : return "0.3"
                            case 2 : return "0.6"
                            case 3 : return "0.5"
                            }
                        }
                        to: {
                            switch(index) {
                            case 0 : return "0.5"
                            case 1 : return "0.4"
                            case 2 : return "0.3"
                            case 3 : return "0.6"
                            }
                        }
                        duration: 300
                    }
                    PropertyAnimation {
                        from: {
                            switch(index) {
                            case 0 : return "0.5"
                            case 1 : return "0.4"
                            case 2 : return "0.3"
                            case 3 : return "0.6"
                            }
                        }
                        to: {
                            switch(index) {
                            case 0 : return "0.6"
                            case 1 : return "0.5"
                            case 2 : return "0.4"
                            case 3 : return "0.3"
                            }
                        }
                        duration: 300
                    }
                }
            }
        }
    }
    MouseArea {
        anchors.fill: parent
        onClicked: {
            Qt.quit();
        }
    }
}

