import QtQuick
import QtQuick3D

Node {
    id: node

    // Resources
    PrincipledMaterial {
        id: polo17_glass_001_material
        objectName: "polo17_glass.001"
        baseColor: "#40090909"
        cullMode: PrincipledMaterial.NoCulling
        alphaMode: PrincipledMaterial.Blend
    }

    // Nodes:
    Node {
        id: sketchfab_model
        objectName: "Sketchfab_model"
        rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
        scale: Qt.vector3d(1, 1, 1)
        Node {
            id: node2017_Volkswagen_Polo_Sedan_fbx
            objectName: "2017 Volkswagen Polo Sedan.fbx"
            rotation: Qt.quaternion(0.707107, 0.707107, 0, 0)
            scale: Qt.vector3d(0.01, 0.01, 0.01)
            Node {
                id: rootNode
                objectName: "RootNode"
                Node {
                    id: polo17_doorglass_RL
                    objectName: "polo17_doorglass_RL"
                    rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                    scale: Qt.vector3d(100, 100, 100)
                    Model {
                        id: polo17_doorglass_RL_polo17_glass_0
                        objectName: "polo17_doorglass_RL_polo17_glass_0"
                        source: "meshes/polo17_doorglass_RL_polo17_glass_0_001_mesh.mesh"
                        materials: [
                            polo17_glass_001_material
                        ]
                    }
                }
            }
        }
    }

    // Animations:
}
