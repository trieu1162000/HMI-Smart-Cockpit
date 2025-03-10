import QtQuick 2.15
import QtQuick3D

Node {
    id: polo17_door_FL_full
    objectName: "polo17_door_FL_full"

    // Import the individual parts
    Polo17DoorFLBody {
        id: polo17_door_FL
    }

    Polo17DoorFLPanel {
        id: polo17_doorpanel_FL
    }
}
