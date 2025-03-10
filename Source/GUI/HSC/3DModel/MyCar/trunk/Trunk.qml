import QtQuick
import QtQuick3D

Node {
    id: node

    // Resources
    PrincipledMaterial {
        id: polo17black_004_material
        objectName: "polo17black.004"
        baseColor: "#ff000000"
        roughness: 1
        cullMode: PrincipledMaterial.NoCulling
        alphaMode: PrincipledMaterial.Opaque
    }
    PrincipledMaterial {
        id: polo17body_004_material
        objectName: "polo17body.004"
        baseColor: "#ffffd4e0"
        roughness: 0.25
        cullMode: PrincipledMaterial.NoCulling
        alphaMode: PrincipledMaterial.Opaque
    }
    PrincipledMaterial {
        id: polo17chrome_004_material
        objectName: "polo17chrome.004"
        baseColor: "#ff3d3d3d"
        cullMode: PrincipledMaterial.NoCulling
        alphaMode: PrincipledMaterial.Opaque
    }
    PrincipledMaterial {
        id: polo17plastik_003_material
        objectName: "polo17plastik.003"
        baseColor: "#ff080808"
        roughness: 0.9930642247200012
        cullMode: PrincipledMaterial.NoCulling
        alphaMode: PrincipledMaterial.Opaque
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
                    id: polo17_trunk
                    objectName: "polo17_trunk"
                    rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                    scale: Qt.vector3d(100, 100, 100)
                    Model {
                        id: polo17_trunk_polo17black_0
                        objectName: "polo17_trunk_polo17black_0"
                        source: "meshes/polo17_trunk_polo17black_0_001_mesh.mesh"
                        materials: [
                            polo17black_004_material
                        ]
                    }
                    Model {
                        id: polo17_trunk_polo17body_0
                        objectName: "polo17_trunk_polo17body_0"
                        source: "meshes/polo17_trunk_polo17body_0_001_mesh.mesh"
                        materials: [
                            polo17body_004_material
                        ]
                    }
                    Model {
                        id: polo17_trunk_polo17chrome_0
                        objectName: "polo17_trunk_polo17chrome_0"
                        source: "meshes/polo17_trunk_polo17chrome_0_001_mesh.mesh"
                        materials: [
                            polo17chrome_004_material
                        ]
                    }
                    Model {
                        id: polo17_trunk_polo17plastik_0
                        objectName: "polo17_trunk_polo17plastik_0"
                        source: "meshes/polo17_trunk_polo17plastik_0_001_mesh.mesh"
                        materials: [
                            polo17plastik_003_material
                        ]
                    }
                }
            }
        }
    }

    // Animations:
}
