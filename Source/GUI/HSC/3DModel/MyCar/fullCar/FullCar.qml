import QtQuick
import QtQuick3D

Node {
    id: node

    // Resources
    property url textureData: "maps/textureData.png"
    Texture {
        id: _0_texture
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: node.textureData
    }
    PrincipledMaterial {
        id: polo17seats2_002_material
        objectName: "polo17seats2.002"
        baseColor: "#ff1c1c1c"
        roughness: 0.975674033164978
        cullMode: PrincipledMaterial.NoCulling
        alphaMode: PrincipledMaterial.Opaque
    }
    PrincipledMaterial {
        id: polo17light_002_material
        objectName: "polo17light.002"
        baseColor: "#ff626060"
        cullMode: PrincipledMaterial.NoCulling
        alphaMode: PrincipledMaterial.Opaque
    }
    PrincipledMaterial {
        id: polo17wheel_002_material
        objectName: "polo17wheel.002"
        baseColor: "#ff3f3c3c"
        cullMode: PrincipledMaterial.NoCulling
        alphaMode: PrincipledMaterial.Opaque
    }
    PrincipledMaterial {
        id: tire_01a_002_material
        objectName: "tire_01a.002"
        baseColor: "#ff070707"
        roughness: 0.9941529035568237
        cullMode: PrincipledMaterial.NoCulling
        alphaMode: PrincipledMaterial.Opaque
    }
    PrincipledMaterial {
        id: polo17gabarit_002_material
        objectName: "polo17gabarit.002"
        baseColor: "#ff1f0001"
        roughness: 0.9942693710327148
        cullMode: PrincipledMaterial.NoCulling
        alphaMode: PrincipledMaterial.Opaque
    }
    PrincipledMaterial {
        id: polo17lightglass_R_002_material
        objectName: "polo17lightglass_R.002"
        baseColor: "#80ffffff"
        baseColorMap: _0_texture
        roughness: 0.25
        cullMode: PrincipledMaterial.NoCulling
        alphaMode: PrincipledMaterial.Blend
    }
    PrincipledMaterial {
        id: polo17kover_002_material
        objectName: "polo17kover.002"
        baseColor: "#ff050505"
        roughness: 0.9960134625434875
        cullMode: PrincipledMaterial.NoCulling
        alphaMode: PrincipledMaterial.Opaque
    }
    PrincipledMaterial {
        id: polo17plastik_002_material
        objectName: "polo17plastik.002"
        baseColor: "#ff080808"
        roughness: 0.9930642247200012
        cullMode: PrincipledMaterial.NoCulling
        alphaMode: PrincipledMaterial.Opaque
    }
    PrincipledMaterial {
        id: polo17stop_002_material
        objectName: "polo17stop.002"
        baseColor: "#ffcc0001"
        roughness: 0.9618708491325378
        cullMode: PrincipledMaterial.NoCulling
        alphaMode: PrincipledMaterial.Opaque
    }
    PrincipledMaterial {
        id: polo17_red_002_material
        objectName: "polo17_red.002"
        baseColor: "#ffcc0002"
        roughness: 0.961843729019165
        cullMode: PrincipledMaterial.NoCulling
        alphaMode: PrincipledMaterial.Opaque
    }
    PrincipledMaterial {
        id: polo17black_002_material
        objectName: "polo17black.002"
        baseColor: "#ff000000"
        roughness: 1
        cullMode: PrincipledMaterial.NoCulling
        alphaMode: PrincipledMaterial.Opaque
    }
    PrincipledMaterial {
        id: polo17chrome_002_material
        objectName: "polo17chrome.002"
        baseColor: "#ff3d3d3d"
        cullMode: PrincipledMaterial.NoCulling
        alphaMode: PrincipledMaterial.Opaque
    }
    PrincipledMaterial {
        id: polo17gauges2_002_material
        objectName: "polo17gauges2.002"
        baseColor: "#ffcccccc"
        roughness: 0.8211145401000977
        cullMode: PrincipledMaterial.NoCulling
        alphaMode: PrincipledMaterial.Opaque
    }
    PrincipledMaterial {
        id: polo17salon2_002_material
        objectName: "polo17salon2.002"
        baseColor: "#ff070707"
        roughness: 0.993802011013031
        cullMode: PrincipledMaterial.NoCulling
        alphaMode: PrincipledMaterial.Opaque
    }
    PrincipledMaterial {
        id: polo17_glass_int_002_material
        objectName: "polo17_glass_int.002"
        baseColor: "#40090909"
        cullMode: PrincipledMaterial.NoCulling
        alphaMode: PrincipledMaterial.Blend
    }
    PrincipledMaterial {
        id: polo17body_002_material
        objectName: "polo17body.002"
        baseColor: "#ffffd4e0"
        roughness: 0.25
        cullMode: PrincipledMaterial.NoCulling
        alphaMode: PrincipledMaterial.Opaque
    }
    PrincipledMaterial {
        id: sunburst_002_material
        objectName: "sunburst.002"
        baseColor: "#ff060606"
        roughness: 0.9948192834854126
        cullMode: PrincipledMaterial.NoCulling
        alphaMode: PrincipledMaterial.Opaque
    }
    PrincipledMaterial {
        id: polo17lightR_002_material
        objectName: "polo17lightR.002"
        baseColor: "#ffcc0000"
        roughness: 0.9617149829864502
        cullMode: PrincipledMaterial.NoCulling
        alphaMode: PrincipledMaterial.Opaque
    }
    PrincipledMaterial {
        id: etk800_002_material
        objectName: "etk800.002"
        baseColor: "#ff969696"
        roughness: 0.8685191869735718
        cullMode: PrincipledMaterial.NoCulling
        alphaMode: PrincipledMaterial.Opaque
    }
    PrincipledMaterial {
        id: sunburst_engine_002_material
        objectName: "sunburst_engine.002"
        baseColor: "#ffa5a5a5"
        roughness: 0.855402410030365
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
                    id: polo17_akpp
                    objectName: "polo17_akpp"
                    rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                    scale: Qt.vector3d(100, 100, 100)
                    Model {
                        id: polo17_akpp_polo17black_0
                        objectName: "polo17_akpp_polo17black_0"
                        source: "meshes/polo17_akpp_polo17black_0_002_mesh.mesh"
                        materials: [
                            polo17black_002_material
                        ]
                    }
                    Model {
                        id: polo17_akpp_polo17chrome_0
                        objectName: "polo17_akpp_polo17chrome_0"
                        source: "meshes/polo17_akpp_polo17chrome_0_002_mesh.mesh"
                        materials: [
                            polo17chrome_002_material
                        ]
                    }
                    Model {
                        id: polo17_akpp_polo17gauges2_0
                        objectName: "polo17_akpp_polo17gauges2_0"
                        source: "meshes/polo17_akpp_polo17gauges2_0_002_mesh.mesh"
                        materials: [
                            polo17gauges2_002_material
                        ]
                    }
                    Model {
                        id: polo17_akpp_polo17salon2_0
                        objectName: "polo17_akpp_polo17salon2_0"
                        source: "meshes/polo17_akpp_polo17salon2_0_002_mesh.mesh"
                        materials: [
                            polo17salon2_002_material
                        ]
                    }
                }
                Node {
                    id: polo17_backlight_int
                    objectName: "polo17_backlight_int"
                    position: Qt.vector3d(0, -0.108671, 0)
                    rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                    scale: Qt.vector3d(100, 100, 100)
                    Model {
                        id: polo17_backlight_int_polo17_glass_int_0
                        objectName: "polo17_backlight_int_polo17_glass_int_0"
                        source: "meshes/polo17_backlight_int_polo17_glass_int_0_002_mesh.mesh"
                        materials: [
                            polo17_glass_int_002_material
                        ]
                    }
                }
                Node {
                    id: polo17_body
                    objectName: "polo17_body"
                    rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                    scale: Qt.vector3d(100, 100, 100)
                    Model {
                        id: polo17_body_polo17black_0
                        objectName: "polo17_body_polo17black_0"
                        source: "meshes/polo17_body_polo17black_0_002_mesh.mesh"
                        materials: [
                            polo17black_002_material
                        ]
                    }
                    Model {
                        id: polo17_body_polo17body_0
                        objectName: "polo17_body_polo17body_0"
                        source: "meshes/polo17_body_polo17body_0_002_mesh.mesh"
                        materials: [
                            polo17body_002_material
                        ]
                    }
                    Model {
                        id: polo17_body_polo17chrome_0
                        objectName: "polo17_body_polo17chrome_0"
                        source: "meshes/polo17_body_polo17chrome_0_002_mesh.mesh"
                        materials: [
                            polo17chrome_002_material
                        ]
                    }
                }
                Node {
                    id: polo17_body_F
                    objectName: "polo17_body_F"
                    rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                    scale: Qt.vector3d(100, 100, 100)
                    Model {
                        id: polo17_body_F_sunburst_0
                        objectName: "polo17_body_F_sunburst_0"
                        source: "meshes/polo17_body_F_sunburst_0_002_mesh.mesh"
                        materials: [
                            sunburst_002_material
                        ]
                    }
                }
                Node {
                    id: polo17_brace
                    objectName: "polo17_brace"
                    rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                    scale: Qt.vector3d(100, 100, 100)
                    Model {
                        id: polo17_brace_sunburst_0
                        objectName: "polo17_brace_sunburst_0"
                        source: "meshes/polo17_brace_sunburst_0_002_mesh.mesh"
                        materials: [
                            sunburst_002_material
                        ]
                    }
                }
                Node {
                    id: polo17_brakepedal
                    objectName: "polo17_brakepedal"
                    position: Qt.vector3d(30.9293, 52.3947, 88.1255)
                    rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                    scale: Qt.vector3d(100, 100, 100)
                    Model {
                        id: polo17_brakepedal_polo17black_0
                        objectName: "polo17_brakepedal_polo17black_0"
                        source: "meshes/polo17_brakepedal_polo17black_0_002_mesh.mesh"
                        materials: [
                            polo17black_002_material
                        ]
                    }
                }
                Node {
                    id: polo17_bumper_F
                    objectName: "polo17_bumper_F"
                    rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                    scale: Qt.vector3d(100, 100, 100)
                    Model {
                        id: polo17_bumper_F_polo17_glass_0
                        objectName: "polo17_bumper_F_polo17_glass_0"
                        source: "meshes/polo17_bumper_F_polo17_glass_0_002_mesh.mesh"
                        materials: [
                            polo17_glass_int_002_material
                        ]
                    }
                    Model {
                        id: polo17_bumper_F_polo17black_0
                        objectName: "polo17_bumper_F_polo17black_0"
                        source: "meshes/polo17_bumper_F_polo17black_0_002_mesh.mesh"
                        materials: [
                            polo17black_002_material
                        ]
                    }
                    Model {
                        id: polo17_bumper_F_polo17body_0
                        objectName: "polo17_bumper_F_polo17body_0"
                        source: "meshes/polo17_bumper_F_polo17body_0_002_mesh.mesh"
                        materials: [
                            polo17body_002_material
                        ]
                    }
                    Model {
                        id: polo17_bumper_F_polo17chrome_0
                        objectName: "polo17_bumper_F_polo17chrome_0"
                        source: "meshes/polo17_bumper_F_polo17chrome_0_002_mesh.mesh"
                        materials: [
                            polo17chrome_002_material
                        ]
                    }
                }
                Node {
                    id: polo17_bumper_R
                    objectName: "polo17_bumper_R"
                    rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                    scale: Qt.vector3d(100, 100, 100)
                    Model {
                        id: polo17_bumper_R_polo17body_0
                        objectName: "polo17_bumper_R_polo17body_0"
                        source: "meshes/polo17_bumper_R_polo17body_0_002_mesh.mesh"
                        materials: [
                            polo17body_002_material
                        ]
                    }
                    Model {
                        id: polo17_bumper_R_polo17chrome_0
                        objectName: "polo17_bumper_R_polo17chrome_0"
                        source: "meshes/polo17_bumper_R_polo17chrome_0_002_mesh.mesh"
                        materials: [
                            polo17chrome_002_material
                        ]
                    }
                    Model {
                        id: polo17_bumper_R_polo17lightR_0
                        objectName: "polo17_bumper_R_polo17lightR_0"
                        source: "meshes/polo17_bumper_R_polo17lightR_0_002_mesh.mesh"
                        materials: [
                            polo17lightR_002_material
                        ]
                    }
                }
                Node {
                    id: polo17_bumperbar_F
                    objectName: "polo17_bumperbar_F"
                    rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                    scale: Qt.vector3d(100, 100, 100)
                    Model {
                        id: polo17_bumperbar_F_etk800_0
                        objectName: "polo17_bumperbar_F_etk800_0"
                        source: "meshes/polo17_bumperbar_F_etk800_0_002_mesh.mesh"
                        materials: [
                            etk800_002_material
                        ]
                    }
                }
                Node {
                    id: polo17_clutchpedal
                    objectName: "polo17_clutchpedal"
                    position: Qt.vector3d(46.8648, 52.3947, 88.1255)
                    rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                    scale: Qt.vector3d(100, 100, 100)
                    Model {
                        id: polo17_clutchpedal_polo17black_0
                        objectName: "polo17_clutchpedal_polo17black_0"
                        source: "meshes/polo17_clutchpedal_polo17black_0_002_mesh.mesh"
                        materials: [
                            polo17black_002_material
                        ]
                    }
                }
                Node {
                    id: polo17_coilover_R
                    objectName: "polo17_coilover_R"
                    rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                    scale: Qt.vector3d(100, 100, 100)
                    Model {
                        id: polo17_coilover_R_sunburst_0
                        objectName: "polo17_coilover_R_sunburst_0"
                        source: "meshes/polo17_coilover_R_sunburst_0_002_mesh.mesh"
                        materials: [
                            sunburst_002_material
                        ]
                    }
                }
                Node {
                    id: polo17_dash
                    objectName: "polo17_dash"
                    rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                    scale: Qt.vector3d(100, 100, 100)
                    Model {
                        id: polo17_dash_polo17black_0
                        objectName: "polo17_dash_polo17black_0"
                        source: "meshes/polo17_dash_polo17black_0_002_mesh.mesh"
                        materials: [
                            polo17black_002_material
                        ]
                    }
                    Model {
                        id: polo17_dash_polo17gauges2_0
                        objectName: "polo17_dash_polo17gauges2_0"
                        source: "meshes/polo17_dash_polo17gauges2_0_002_mesh.mesh"
                        materials: [
                            polo17gauges2_002_material
                        ]
                    }
                    Model {
                        id: polo17_dash_polo17pribhazard_0
                        objectName: "polo17_dash_polo17pribhazard_0"
                        source: "meshes/polo17_dash_polo17pribhazard_0_002_mesh.mesh"
                        materials: [
                            polo17gauges2_002_material
                        ]
                    }
                    Model {
                        id: polo17_dash_polo17pribpov_L_0
                        objectName: "polo17_dash_polo17pribpov_L_0"
                        source: "meshes/polo17_dash_polo17pribpov_L_0_002_mesh.mesh"
                        materials: [
                            polo17gauges2_002_material
                        ]
                    }
                    Model {
                        id: polo17_dash_polo17pribpov_R_0
                        objectName: "polo17_dash_polo17pribpov_R_0"
                        source: "meshes/polo17_dash_polo17pribpov_R_0_002_mesh.mesh"
                        materials: [
                            polo17gauges2_002_material
                        ]
                    }
                    Model {
                        id: polo17_dash_polo17salon2_0
                        objectName: "polo17_dash_polo17salon2_0"
                        source: "meshes/polo17_dash_polo17salon2_0_002_mesh.mesh"
                        materials: [
                            polo17salon2_002_material
                        ]
                    }
                }
                Node {
                    id: polo17_dash11
                    objectName: "polo17_dash11"
                    rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                    scale: Qt.vector3d(100, 100, 100)
                    Model {
                        id: polo17_dash11_polo17salon_0
                        objectName: "polo17_dash11_polo17salon_0"
                        source: "meshes/polo17_dash11_polo17salon_0_002_mesh.mesh"
                        materials: [
                            polo17gauges2_002_material
                        ]
                    }
                }
                Node {
                    id: polo17_dash2
                    objectName: "polo17_dash2"
                    rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                    scale: Qt.vector3d(100, 100, 100)
                    Model {
                        id: polo17_dash2_polo17sgray_0
                        objectName: "polo17_dash2_polo17sgray_0"
                        source: "meshes/polo17_dash2_polo17sgray_0_002_mesh.mesh"
                        materials: [
                            polo17gauges2_002_material
                        ]
                    }
                }
                Node {
                    id: polo17_dash3
                    objectName: "polo17_dash3"
                    rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                    scale: Qt.vector3d(100, 100, 100)
                    Model {
                        id: polo17_dash3_polo17black_0
                        objectName: "polo17_dash3_polo17black_0"
                        source: "meshes/polo17_dash3_polo17black_0_002_mesh.mesh"
                        materials: [
                            polo17black_002_material
                        ]
                    }
                }
                Node {
                    id: polo17_dash4
                    objectName: "polo17_dash4"
                    rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                    scale: Qt.vector3d(100, 100, 100)
                    Model {
                        id: polo17_dash4_polo17black_0
                        objectName: "polo17_dash4_polo17black_0"
                        source: "meshes/polo17_dash4_polo17black_0_002_mesh.mesh"
                        materials: [
                            polo17black_002_material
                        ]
                    }
                }
                Node {
                    id: polo17_dash5
                    objectName: "polo17_dash5"
                    rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                    scale: Qt.vector3d(100, 100, 100)
                    Model {
                        id: polo17_dash5_polo17black_0
                        objectName: "polo17_dash5_polo17black_0"
                        source: "meshes/polo17_dash5_polo17black_0_002_mesh.mesh"
                        materials: [
                            polo17black_002_material
                        ]
                    }
                    Model {
                        id: polo17_dash5_polo17kover_0
                        objectName: "polo17_dash5_polo17kover_0"
                        source: "meshes/polo17_dash5_polo17kover_0_002_mesh.mesh"
                        materials: [
                            polo17kover_002_material
                        ]
                    }
                    Model {
                        id: polo17_dash5_polo17plastik_0
                        objectName: "polo17_dash5_polo17plastik_0"
                        source: "meshes/polo17_dash5_polo17plastik_0_002_mesh.mesh"
                        materials: [
                            polo17plastik_002_material
                        ]
                    }
                    Model {
                        id: polo17_dash5_polo17roof_0
                        objectName: "polo17_dash5_polo17roof_0"
                        source: "meshes/polo17_dash5_polo17roof_0_002_mesh.mesh"
                        materials: [
                            polo17gauges2_002_material
                        ]
                    }
                    Model {
                        id: polo17_dash5_polo17stop_0
                        objectName: "polo17_dash5_polo17stop_0"
                        source: "meshes/polo17_dash5_polo17stop_0_002_mesh.mesh"
                        materials: [
                            polo17stop_002_material
                        ]
                    }
                }
                Node {
                    id: polo17_dash6
                    objectName: "polo17_dash6"
                    rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                    scale: Qt.vector3d(100, 100, 100)
                    Model {
                        id: polo17_dash6_polo17chrome_0
                        objectName: "polo17_dash6_polo17chrome_0"
                        source: "meshes/polo17_dash6_polo17chrome_0_002_mesh.mesh"
                        materials: [
                            polo17chrome_002_material
                        ]
                    }
                }
                Node {
                    id: polo17_dash7
                    objectName: "polo17_dash7"
                    rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                    scale: Qt.vector3d(100, 100, 100)
                    Model {
                        id: polo17_dash7_mirror_0
                        objectName: "polo17_dash7_mirror_0"
                        source: "meshes/polo17_dash7_mirror_0_002_mesh.mesh"
                        materials: [
                            polo17gauges2_002_material
                        ]
                    }
                }
                Node {
                    id: polo17_dash8
                    objectName: "polo17_dash8"
                    rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                    scale: Qt.vector3d(100, 100, 100)
                    Model {
                        id: polo17_dash8_polo17gauges_0
                        objectName: "polo17_dash8_polo17gauges_0"
                        source: "meshes/polo17_dash8_polo17gauges_0_002_mesh.mesh"
                        materials: [
                            polo17gauges2_002_material
                        ]
                    }
                }
                Node {
                    id: polo17_dash9
                    objectName: "polo17_dash9"
                    rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                    scale: Qt.vector3d(100, 100, 100)
                    Model {
                        id: polo17_dash9_polo17_red_0
                        objectName: "polo17_dash9_polo17_red_0"
                        source: "meshes/polo17_dash9_polo17_red_0_002_mesh.mesh"
                        materials: [
                            polo17_red_002_material
                        ]
                    }
                }
                Node {
                    id: polo17_decals_gau
                    objectName: "polo17_decals_gau"
                    rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                    scale: Qt.vector3d(100, 100, 100)
                    Model {
                        id: polo17_decals_gau_polo17pribchek_0
                        objectName: "polo17_decals_gau_polo17pribchek_0"
                        source: "meshes/polo17_decals_gau_polo17pribchek_0_002_mesh.mesh"
                        materials: [
                            polo17gauges2_002_material
                        ]
                    }
                    Model {
                        id: polo17_decals_gau_polo17pribfuel_0
                        objectName: "polo17_decals_gau_polo17pribfuel_0"
                        source: "meshes/polo17_decals_gau_polo17pribfuel_0_002_mesh.mesh"
                        materials: [
                            polo17gauges2_002_material
                        ]
                    }
                    Model {
                        id: polo17_decals_gau_polo17pribhigh_0
                        objectName: "polo17_decals_gau_polo17pribhigh_0"
                        source: "meshes/polo17_decals_gau_polo17pribhigh_0_002_mesh.mesh"
                        materials: [
                            polo17gauges2_002_material
                        ]
                    }
                    Model {
                        id: polo17_decals_gau_polo17priblow_0
                        objectName: "polo17_decals_gau_polo17priblow_0"
                        source: "meshes/polo17_decals_gau_polo17priblow_0_002_mesh.mesh"
                        materials: [
                            polo17gauges2_002_material
                        ]
                    }
                    Model {
                        id: polo17_decals_gau_polo17pribparkin_0
                        objectName: "polo17_decals_gau_polo17pribparkin_0"
                        source: "meshes/polo17_decals_gau_polo17pribparkin_0_002_mesh.mesh"
                        materials: [
                            polo17gauges2_002_material
                        ]
                    }
                }
                Node {
                    id: polo17_door_FL
                    objectName: "polo17_door_FL"
                    rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                    scale: Qt.vector3d(100, 100, 100)
                    Model {
                        id: polo17_door_FL_polo17black_0
                        objectName: "polo17_door_FL_polo17black_0"
                        source: "meshes/polo17_door_FL_polo17black_0_002_mesh.mesh"
                        materials: [
                            polo17black_002_material
                        ]
                    }
                    Model {
                        id: polo17_door_FL_polo17body_0
                        objectName: "polo17_door_FL_polo17body_0"
                        source: "meshes/polo17_door_FL_polo17body_0_002_mesh.mesh"
                        materials: [
                            polo17body_002_material
                        ]
                    }
                    Model {
                        id: polo17_door_FL_polo17chrome_0
                        objectName: "polo17_door_FL_polo17chrome_0"
                        source: "meshes/polo17_door_FL_polo17chrome_0_002_mesh.mesh"
                        materials: [
                            polo17chrome_002_material
                        ]
                    }
                }
                Node {
                    id: polo17_door_FR
                    objectName: "polo17_door_FR"
                    rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                    scale: Qt.vector3d(100, 100, 100)
                    Model {
                        id: polo17_door_FR_polo17black_0
                        objectName: "polo17_door_FR_polo17black_0"
                        source: "meshes/polo17_door_FR_polo17black_0_002_mesh.mesh"
                        materials: [
                            polo17black_002_material
                        ]
                    }
                    Model {
                        id: polo17_door_FR_polo17body_0
                        objectName: "polo17_door_FR_polo17body_0"
                        source: "meshes/polo17_door_FR_polo17body_0_002_mesh.mesh"
                        materials: [
                            polo17body_002_material
                        ]
                    }
                    Model {
                        id: polo17_door_FR_polo17chrome_0
                        objectName: "polo17_door_FR_polo17chrome_0"
                        source: "meshes/polo17_door_FR_polo17chrome_0_002_mesh.mesh"
                        materials: [
                            polo17chrome_002_material
                        ]
                    }
                }
                Node {
                    id: polo17_door_RL
                    objectName: "polo17_door_RL"
                    rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                    scale: Qt.vector3d(100, 100, 100)
                    Model {
                        id: polo17_door_RL_polo17black_0
                        objectName: "polo17_door_RL_polo17black_0"
                        source: "meshes/polo17_door_RL_polo17black_0_002_mesh.mesh"
                        materials: [
                            polo17black_002_material
                        ]
                    }
                    Model {
                        id: polo17_door_RL_polo17body_0
                        objectName: "polo17_door_RL_polo17body_0"
                        source: "meshes/polo17_door_RL_polo17body_0_002_mesh.mesh"
                        materials: [
                            polo17body_002_material
                        ]
                    }
                    Model {
                        id: polo17_door_RL_polo17chrome_0
                        objectName: "polo17_door_RL_polo17chrome_0"
                        source: "meshes/polo17_door_RL_polo17chrome_0_002_mesh.mesh"
                        materials: [
                            polo17chrome_002_material
                        ]
                    }
                }
                Node {
                    id: polo17_door_RR
                    objectName: "polo17_door_RR"
                    rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                    scale: Qt.vector3d(100, 100, 100)
                    Model {
                        id: polo17_door_RR_polo17black_0
                        objectName: "polo17_door_RR_polo17black_0"
                        source: "meshes/polo17_door_RR_polo17black_0_002_mesh.mesh"
                        materials: [
                            polo17black_002_material
                        ]
                    }
                    Model {
                        id: polo17_door_RR_polo17body_0
                        objectName: "polo17_door_RR_polo17body_0"
                        source: "meshes/polo17_door_RR_polo17body_0_002_mesh.mesh"
                        materials: [
                            polo17body_002_material
                        ]
                    }
                    Model {
                        id: polo17_door_RR_polo17chrome_0
                        objectName: "polo17_door_RR_polo17chrome_0"
                        source: "meshes/polo17_door_RR_polo17chrome_0_002_mesh.mesh"
                        materials: [
                            polo17chrome_002_material
                        ]
                    }
                }
                // Front Left Door Glass
                Node {
                    id: polo17_doorglass_FL
                    objectName: "polo17_doorglass_FL"
                    rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                    scale: Qt.vector3d(100, 100, 100)
                    Model {
                        id: polo17_doorglass_FL_polo17_glass_0
                        objectName: "polo17_doorglass_FL_polo17_glass_0"
                        source: "meshes/polo17_doorglass_FL_polo17_glass_0_002_mesh.mesh"
                        materials: [
                            polo17_glass_int_002_material
                        ]
                    }
                }
                // Front Right Door Glass
                Node {
                    id: polo17_doorglass_FR
                    objectName: "polo17_doorglass_FR"
                    rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                    scale: Qt.vector3d(100, 100, 100)
                    Model {
                        id: polo17_doorglass_FR_polo17_glass_0
                        objectName: "polo17_doorglass_FR_polo17_glass_0"
                        source: "meshes/polo17_doorglass_FR_polo17_glass_0_002_mesh.mesh"
                        materials: [
                            polo17_glass_int_002_material
                        ]
                    }
                }
                // Rear Left Door Glass
                Node {
                    id: polo17_doorglass_RL
                    objectName: "polo17_doorglass_RL"
                    rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                    scale: Qt.vector3d(100, 100, 100)
                    Model {
                        id: polo17_doorglass_RL_polo17_glass_0
                        objectName: "polo17_doorglass_RL_polo17_glass_0"
                        source: "meshes/polo17_doorglass_RL_polo17_glass_0_002_mesh.mesh"
                        materials: [
                            polo17_glass_int_002_material
                        ]
                    }
                }
                // Rear Right Door Glass
                Node {
                    id: polo17_doorglass_RR
                    objectName: "polo17_doorglass_RR"
                    rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                    scale: Qt.vector3d(100, 100, 100)
                    Model {
                        id: polo17_doorglass_RR_polo17_glass_0
                        objectName: "polo17_doorglass_RR_polo17_glass_0"
                        source: "meshes/polo17_doorglass_RR_polo17_glass_0_002_mesh.mesh"
                        materials: [
                            polo17_glass_int_002_material
                        ]
                    }
                }
                Node {
                    id: polo17_doorpanel_FL
                    objectName: "polo17_doorpanel_FL"
                    rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                    scale: Qt.vector3d(100, 100, 100)
                    Model {
                        id: polo17_doorpanel_FL_polo17black_0
                        objectName: "polo17_doorpanel_FL_polo17black_0"
                        source: "meshes/polo17_doorpanel_FL_polo17black_0_002_mesh.mesh"
                        materials: [
                            polo17black_002_material
                        ]
                    }
                    Model {
                        id: polo17_doorpanel_FL_polo17chrome_0
                        objectName: "polo17_doorpanel_FL_polo17chrome_0"
                        source: "meshes/polo17_doorpanel_FL_polo17chrome_0_002_mesh.mesh"
                        materials: [
                            polo17chrome_002_material
                        ]
                    }
                    Model {
                        id: polo17_doorpanel_FL_polo17gauges_0
                        objectName: "polo17_doorpanel_FL_polo17gauges_0"
                        source: "meshes/polo17_doorpanel_FL_polo17gauges_0_002_mesh.mesh"
                        materials: [
                            polo17gauges2_002_material
                        ]
                    }
                    Model {
                        id: polo17_doorpanel_FL_polo17plastik_0
                        objectName: "polo17_doorpanel_FL_polo17plastik_0"
                        source: "meshes/polo17_doorpanel_FL_polo17plastik_0_002_mesh.mesh"
                        materials: [
                            polo17plastik_002_material
                        ]
                    }
                    Model {
                        id: polo17_doorpanel_FL_polo17salon_0
                        objectName: "polo17_doorpanel_FL_polo17salon_0"
                        source: "meshes/polo17_doorpanel_FL_polo17salon_0_002_mesh.mesh"
                        materials: [
                            polo17gauges2_002_material
                        ]
                    }
                    Model {
                        id: polo17_doorpanel_FL_polo17seats_0
                        objectName: "polo17_doorpanel_FL_polo17seats_0"
                        source: "meshes/polo17_doorpanel_FL_polo17seats_0_002_mesh.mesh"
                        materials: [
                            sunburst_002_material
                        ]
                    }
                }
                Node {
                    id: polo17_doorpanel_FR
                    objectName: "polo17_doorpanel_FR"
                    rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                    scale: Qt.vector3d(100, 100, 100)
                    Model {
                        id: polo17_doorpanel_FR_polo17black_0
                        objectName: "polo17_doorpanel_FR_polo17black_0"
                        source: "meshes/polo17_doorpanel_FR_polo17black_0_002_mesh.mesh"
                        materials: [
                            polo17black_002_material
                        ]
                    }
                    Model {
                        id: polo17_doorpanel_FR_polo17chrome_0
                        objectName: "polo17_doorpanel_FR_polo17chrome_0"
                        source: "meshes/polo17_doorpanel_FR_polo17chrome_0_002_mesh.mesh"
                        materials: [
                            polo17chrome_002_material
                        ]
                    }
                    Model {
                        id: polo17_doorpanel_FR_polo17gauges_0
                        objectName: "polo17_doorpanel_FR_polo17gauges_0"
                        source: "meshes/polo17_doorpanel_FR_polo17gauges_0_002_mesh.mesh"
                        materials: [
                            polo17gauges2_002_material
                        ]
                    }
                    Model {
                        id: polo17_doorpanel_FR_polo17plastik_0
                        objectName: "polo17_doorpanel_FR_polo17plastik_0"
                        source: "meshes/polo17_doorpanel_FR_polo17plastik_0_002_mesh.mesh"
                        materials: [
                            polo17plastik_002_material
                        ]
                    }
                    Model {
                        id: polo17_doorpanel_FR_polo17salon_0
                        objectName: "polo17_doorpanel_FR_polo17salon_0"
                        source: "meshes/polo17_doorpanel_FR_polo17salon_0_002_mesh.mesh"
                        materials: [
                            polo17gauges2_002_material
                        ]
                    }
                    Model {
                        id: polo17_doorpanel_FR_polo17seats_0
                        objectName: "polo17_doorpanel_FR_polo17seats_0"
                        source: "meshes/polo17_doorpanel_FR_polo17seats_0_002_mesh.mesh"
                        materials: [
                            sunburst_002_material
                        ]
                    }
                }
                Node {
                    id: polo17_doorpanel_RL
                    objectName: "polo17_doorpanel_RL"
                    rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                    scale: Qt.vector3d(100, 100, 100)
                    Model {
                        id: polo17_doorpanel_RL_polo17black_0
                        objectName: "polo17_doorpanel_RL_polo17black_0"
                        source: "meshes/polo17_doorpanel_RL_polo17black_0_002_mesh.mesh"
                        materials: [
                            polo17black_002_material
                        ]
                    }
                    Model {
                        id: polo17_doorpanel_RL_polo17chrome_0
                        objectName: "polo17_doorpanel_RL_polo17chrome_0"
                        source: "meshes/polo17_doorpanel_RL_polo17chrome_0_002_mesh.mesh"
                        materials: [
                            polo17chrome_002_material
                        ]
                    }
                    Model {
                        id: polo17_doorpanel_RL_polo17gauges_0
                        objectName: "polo17_doorpanel_RL_polo17gauges_0"
                        source: "meshes/polo17_doorpanel_RL_polo17gauges_0_002_mesh.mesh"
                        materials: [
                            polo17gauges2_002_material
                        ]
                    }
                    Model {
                        id: polo17_doorpanel_RL_polo17plastik_0
                        objectName: "polo17_doorpanel_RL_polo17plastik_0"
                        source: "meshes/polo17_doorpanel_RL_polo17plastik_0_002_mesh.mesh"
                        materials: [
                            polo17plastik_002_material
                        ]
                    }
                    Model {
                        id: polo17_doorpanel_RL_polo17salon_0
                        objectName: "polo17_doorpanel_RL_polo17salon_0"
                        source: "meshes/polo17_doorpanel_RL_polo17salon_0_002_mesh.mesh"
                        materials: [
                            polo17gauges2_002_material
                        ]
                    }
                    Model {
                        id: polo17_doorpanel_RL_polo17seats_0
                        objectName: "polo17_doorpanel_RL_polo17seats_0"
                        source: "meshes/polo17_doorpanel_RL_polo17seats_0_002_mesh.mesh"
                        materials: [
                            sunburst_002_material
                        ]
                    }
                }
                Node {
                    id: polo17_doorpanel_RR
                    objectName: "polo17_doorpanel_RR"
                    rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                    scale: Qt.vector3d(100, 100, 100)
                    Model {
                        id: polo17_doorpanel_RR_polo17black_0
                        objectName: "polo17_doorpanel_RR_polo17black_0"
                        source: "meshes/polo17_doorpanel_RR_polo17black_0_002_mesh.mesh"
                        materials: [
                            polo17black_002_material
                        ]
                    }
                    Model {
                        id: polo17_doorpanel_RR_polo17gauges_0
                        objectName: "polo17_doorpanel_RR_polo17gauges_0"
                        source: "meshes/polo17_doorpanel_RR_polo17gauges_0_002_mesh.mesh"
                        materials: [
                            polo17gauges2_002_material
                        ]
                    }
                    Model {
                        id: polo17_doorpanel_RR_polo17plastik_0
                        objectName: "polo17_doorpanel_RR_polo17plastik_0"
                        source: "meshes/polo17_doorpanel_RR_polo17plastik_0_002_mesh.mesh"
                        materials: [
                            polo17plastik_002_material
                        ]
                    }
                    Model {
                        id: polo17_doorpanel_RR_polo17salon_0
                        objectName: "polo17_doorpanel_RR_polo17salon_0"
                        source: "meshes/polo17_doorpanel_RR_polo17salon_0_002_mesh.mesh"
                        materials: [
                            polo17gauges2_002_material
                        ]
                    }
                    Model {
                        id: polo17_doorpanel_RR_polo17seats_0
                        objectName: "polo17_doorpanel_RR_polo17seats_0"
                        source: "meshes/polo17_doorpanel_RR_polo17seats_0_002_mesh.mesh"
                        materials: [
                            sunburst_002_material
                        ]
                    }
                    Model {
                        id: polo17_doorpanel_RR_polo17sgray_0
                        objectName: "polo17_doorpanel_RR_polo17sgray_0"
                        source: "meshes/polo17_doorpanel_RR_polo17sgray_0_002_mesh.mesh"
                        materials: [
                            polo17gauges2_002_material
                        ]
                    }
                }
                Node {
                    id: polo17_engbaycrap
                    objectName: "polo17_engbaycrap"
                    rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                    scale: Qt.vector3d(100, 100, 100)
                    Model {
                        id: polo17_engbaycrap_sunburst_0
                        objectName: "polo17_engbaycrap_sunburst_0"
                        source: "meshes/polo17_engbaycrap_sunburst_0_002_mesh.mesh"
                        materials: [
                            sunburst_002_material
                        ]
                    }
                }
                Node {
                    id: polo17_engine
                    objectName: "polo17_engine"
                    rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                    scale: Qt.vector3d(100, 100, 100)
                    Model {
                        id: polo17_engine_polo17black_0
                        objectName: "polo17_engine_polo17black_0"
                        source: "meshes/polo17_engine_polo17black_0_002_mesh.mesh"
                        materials: [
                            polo17black_002_material
                        ]
                    }
                    Model {
                        id: polo17_engine_polo17chrome_0
                        objectName: "polo17_engine_polo17chrome_0"
                        source: "meshes/polo17_engine_polo17chrome_0_002_mesh.mesh"
                        materials: [
                            polo17chrome_002_material
                        ]
                    }
                    Model {
                        id: polo17_engine_sunburst_engine_0
                        objectName: "polo17_engine_sunburst_engine_0"
                        source: "meshes/polo17_engine_sunburst_engine_0_002_mesh.mesh"
                        materials: [
                            sunburst_engine_002_material
                        ]
                    }
                }
                Node {
                    id: polo17_exhaust
                    objectName: "polo17_exhaust"
                    rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                    scale: Qt.vector3d(100, 100, 100)
                    Model {
                        id: polo17_exhaust_polo17chrome_0
                        objectName: "polo17_exhaust_polo17chrome_0"
                        source: "meshes/polo17_exhaust_polo17chrome_0_002_mesh.mesh"
                        materials: [
                            polo17chrome_002_material
                        ]
                    }
                    Model {
                        id: polo17_exhaust_sunburst_0
                        objectName: "polo17_exhaust_sunburst_0"
                        source: "meshes/polo17_exhaust_sunburst_0_002_mesh.mesh"
                        materials: [
                            sunburst_002_material
                        ]
                    }
                }
                Node {
                    id: polo17_fender_L
                    objectName: "polo17_fender_L"
                    rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                    scale: Qt.vector3d(100, 100, 100)
                    Model {
                        id: polo17_fender_L_polo17black_0
                        objectName: "polo17_fender_L_polo17black_0"
                        source: "meshes/polo17_fender_L_polo17black_0_002_mesh.mesh"
                        materials: [
                            polo17black_002_material
                        ]
                    }
                    Model {
                        id: polo17_fender_L_polo17body_0
                        objectName: "polo17_fender_L_polo17body_0"
                        source: "meshes/polo17_fender_L_polo17body_0_002_mesh.mesh"
                        materials: [
                            polo17body_002_material
                        ]
                    }
                    Model {
                        id: polo17_fender_L_polo17chrome_0
                        objectName: "polo17_fender_L_polo17chrome_0"
                        source: "meshes/polo17_fender_L_polo17chrome_0_002_mesh.mesh"
                        materials: [
                            polo17chrome_002_material
                        ]
                    }
                }
                Node {
                    id: polo17_fender_R
                    objectName: "polo17_fender_R"
                    rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                    scale: Qt.vector3d(100, 100, 100)
                    Model {
                        id: polo17_fender_R_polo17black_0
                        objectName: "polo17_fender_R_polo17black_0"
                        source: "meshes/polo17_fender_R_polo17black_0_002_mesh.mesh"
                        materials: [
                            polo17black_002_material
                        ]
                    }
                    Model {
                        id: polo17_fender_R_polo17body_0
                        objectName: "polo17_fender_R_polo17body_0"
                        source: "meshes/polo17_fender_R_polo17body_0_002_mesh.mesh"
                        materials: [
                            polo17body_002_material
                        ]
                    }
                    Model {
                        id: polo17_fender_R_polo17chrome_0
                        objectName: "polo17_fender_R_polo17chrome_0"
                        source: "meshes/polo17_fender_R_polo17chrome_0_002_mesh.mesh"
                        materials: [
                            polo17chrome_002_material
                        ]
                    }
                }
                Node {
                    id: polo17_foglights
                    objectName: "polo17_foglights"
                    rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                    scale: Qt.vector3d(100, 100, 100)
                    Model {
                        id: polo17_foglights_polo17fog_0
                        objectName: "polo17_foglights_polo17fog_0"
                        source: "meshes/polo17_foglights_polo17fog_0_002_mesh.mesh"
                        materials: [
                            polo17gauges2_002_material
                        ]
                    }
                }
                Node {
                    id: polo17_fueltank
                    objectName: "polo17_fueltank"
                    rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                    scale: Qt.vector3d(100, 100, 100)
                    Model {
                        id: polo17_fueltank_sunburst_0
                        objectName: "polo17_fueltank_sunburst_0"
                        source: "meshes/polo17_fueltank_sunburst_0_002_mesh.mesh"
                        materials: [
                            sunburst_002_material
                        ]
                    }
                }
                Node {
                    id: polo17_gaspedal
                    objectName: "polo17_gaspedal"
                    position: Qt.vector3d(19.9044, 52.3947, 88.1255)
                    rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                    scale: Qt.vector3d(100, 100, 100)
                    Model {
                        id: polo17_gaspedal_polo17black_0
                        objectName: "polo17_gaspedal_polo17black_0"
                        source: "meshes/polo17_gaspedal_polo17black_0_002_mesh.mesh"
                        materials: [
                            polo17black_002_material
                        ]
                    }
                }
                Node {
                    id: polo17_gauges21
                    objectName: "polo17_gauges21"
                    rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                    scale: Qt.vector3d(100, 100, 100)
                    Model {
                        id: polo17_gauges21_polo17clock_0
                        objectName: "polo17_gauges21_polo17clock_0"
                        source: "meshes/polo17_gauges21_polo17clock_0_002_mesh.mesh"
                        materials: [
                            polo17gauges2_002_material
                        ]
                    }
                    Model {
                        id: polo17_gauges21_polo17gauges_0
                        objectName: "polo17_gauges21_polo17gauges_0"
                        source: "meshes/polo17_gauges21_polo17gauges_0_002_mesh.mesh"
                        materials: [
                            polo17gauges2_002_material
                        ]
                    }
                }
                Node {
                    id: polo17_gaugesss
                    objectName: "polo17_gaugesss"
                    rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                    scale: Qt.vector3d(100, 100, 100)
                    Model {
                        id: polo17_gaugesss_polo17gauges2_0
                        objectName: "polo17_gaugesss_polo17gauges2_0"
                        source: "meshes/polo17_gaugesss_polo17gauges2_0_002_mesh.mesh"
                        materials: [
                            polo17gauges2_002_material
                        ]
                    }
                }
                Node {
                    id: polo17_grille
                    objectName: "polo17_grille"
                    rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                    scale: Qt.vector3d(100, 100, 100)
                    Model {
                        id: polo17_grille_polo17black_0
                        objectName: "polo17_grille_polo17black_0"
                        source: "meshes/polo17_grille_polo17black_0_002_mesh.mesh"
                        materials: [
                            polo17black_002_material
                        ]
                    }
                    Model {
                        id: polo17_grille_polo17chrome_0
                        objectName: "polo17_grille_polo17chrome_0"
                        source: "meshes/polo17_grille_polo17chrome_0_002_mesh.mesh"
                        materials: [
                            polo17chrome_002_material
                        ]
                    }
                }
                Node {
                    id: polo17_halfshaft_F
                    objectName: "polo17_halfshaft_F"
                    rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                    scale: Qt.vector3d(100, 100, 100)
                    Model {
                        id: polo17_halfshaft_F_sunburst_0
                        objectName: "polo17_halfshaft_F_sunburst_0"
                        source: "meshes/polo17_halfshaft_F_sunburst_0_002_mesh.mesh"
                        materials: [
                            sunburst_002_material
                        ]
                    }
                }
                Node {
                    id: polo17_headlight_L
                    objectName: "polo17_headlight_L"
                    rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                    scale: Qt.vector3d(100, 100, 100)
                    Model {
                        id: polo17_headlight_L_polo17head_0
                        objectName: "polo17_headlight_L_polo17head_0"
                        source: "meshes/polo17_headlight_L_polo17head_0_002_mesh.mesh"
                        materials: [
                            polo17gauges2_002_material
                        ]
                    }
                    Model {
                        id: polo17_headlight_L_polo17light_0
                        objectName: "polo17_headlight_L_polo17light_0"
                        source: "meshes/polo17_headlight_L_polo17light_0_002_mesh.mesh"
                        materials: [
                            polo17light_002_material
                        ]
                    }
                    Model {
                        id: polo17_headlight_L_polo17long_0
                        objectName: "polo17_headlight_L_polo17long_0"
                        source: "meshes/polo17_headlight_L_polo17long_0_002_mesh.mesh"
                        materials: [
                            polo17gauges2_002_material
                        ]
                    }
                    Model {
                        id: polo17_headlight_L_polo17pov_L_0
                        objectName: "polo17_headlight_L_polo17pov_L_0"
                        source: "meshes/polo17_headlight_L_polo17pov_L_0_002_mesh.mesh"
                        materials: [
                            polo17gauges2_002_material
                        ]
                    }
                    Model {
                        id: polo17_headlight_L_polo17run_0
                        objectName: "polo17_headlight_L_polo17run_0"
                        source: "meshes/polo17_headlight_L_polo17run_0_002_mesh.mesh"
                        materials: [
                            polo17gauges2_002_material
                        ]
                    }
                }
                Node {
                    id: polo17_headlight_R
                    objectName: "polo17_headlight_R"
                    rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                    scale: Qt.vector3d(100, 100, 100)
                    Model {
                        id: polo17_headlight_R_polo17head_0
                        objectName: "polo17_headlight_R_polo17head_0"
                        source: "meshes/polo17_headlight_R_polo17head_0_002_mesh.mesh"
                        materials: [
                            polo17gauges2_002_material
                        ]
                    }
                    Model {
                        id: polo17_headlight_R_polo17light_0
                        objectName: "polo17_headlight_R_polo17light_0"
                        source: "meshes/polo17_headlight_R_polo17light_0_002_mesh.mesh"
                        materials: [
                            polo17light_002_material
                        ]
                    }
                    Model {
                        id: polo17_headlight_R_polo17long_0
                        objectName: "polo17_headlight_R_polo17long_0"
                        source: "meshes/polo17_headlight_R_polo17long_0_002_mesh.mesh"
                        materials: [
                            polo17gauges2_002_material
                        ]
                    }
                    Model {
                        id: polo17_headlight_R_polo17pov_R_0
                        objectName: "polo17_headlight_R_polo17pov_R_0"
                        source: "meshes/polo17_headlight_R_polo17pov_R_0_002_mesh.mesh"
                        materials: [
                            polo17gauges2_002_material
                        ]
                    }
                    Model {
                        id: polo17_headlight_R_polo17run_0
                        objectName: "polo17_headlight_R_polo17run_0"
                        source: "meshes/polo17_headlight_R_polo17run_0_002_mesh.mesh"
                        materials: [
                            polo17gauges2_002_material
                        ]
                    }
                }
                // Frunk
                Node {
                    id: polo17_hood
                    objectName: "polo17_hood"
                    position: Qt.vector3d(-0.495744, 0.12446, 0.431092)
                    rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                    scale: Qt.vector3d(100, 100, 100)
                    Model {
                        id: polo17_hood_polo17black_0
                        objectName: "polo17_hood_polo17black_0"
                        source: "meshes/polo17_hood_polo17black_0_002_mesh.mesh"
                        materials: [
                            polo17black_002_material
                        ]
                    }
                    Model {
                        id: polo17_hood_polo17body_0
                        objectName: "polo17_hood_polo17body_0"
                        source: "meshes/polo17_hood_polo17body_0_002_mesh.mesh"
                        materials: [
                            polo17body_002_material
                        ]
                    }
                }
                Node {
                    id: polo17_hub_F
                    objectName: "polo17_hub_F"
                    rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                    scale: Qt.vector3d(100, 100, 100)
                    Model {
                        id: polo17_hub_F_sunburst_0
                        objectName: "polo17_hub_F_sunburst_0"
                        source: "meshes/polo17_hub_F_sunburst_0_002_mesh.mesh"
                        materials: [
                            sunburst_002_material
                        ]
                    }
                }
                Node {
                    id: polo17_hub_R
                    objectName: "polo17_hub_R"
                    rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                    scale: Qt.vector3d(100, 100, 100)
                    Model {
                        id: polo17_hub_R_sunburst_0
                        objectName: "polo17_hub_R_sunburst_0"
                        source: "meshes/polo17_hub_R_sunburst_0_002_mesh.mesh"
                        materials: [
                            sunburst_002_material
                        ]
                    }
                }
                Node {
                    id: polo17_intake_NA
                    objectName: "polo17_intake_NA"
                    rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                    scale: Qt.vector3d(100, 100, 100)
                    Model {
                        id: polo17_intake_NA_sunburst_engine_0
                        objectName: "polo17_intake_NA_sunburst_engine_0"
                        source: "meshes/polo17_intake_NA_sunburst_engine_0_002_mesh.mesh"
                        materials: [
                            sunburst_engine_002_material
                        ]
                    }
                }
                Node {
                    id: polo17_lowerarm_F
                    objectName: "polo17_lowerarm_F"
                    rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                    scale: Qt.vector3d(100, 100, 100)
                    Model {
                        id: polo17_lowerarm_F_sunburst_0
                        objectName: "polo17_lowerarm_F_sunburst_0"
                        source: "meshes/polo17_lowerarm_F_sunburst_0_002_mesh.mesh"
                        materials: [
                            sunburst_002_material
                        ]
                    }
                }
                Node {
                    id: polo17_lowerarm_R
                    objectName: "polo17_lowerarm_R"
                    rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                    scale: Qt.vector3d(100, 100, 100)
                    Model {
                        id: polo17_lowerarm_R_sunburst_0
                        objectName: "polo17_lowerarm_R_sunburst_0"
                        source: "meshes/polo17_lowerarm_R_sunburst_0_002_mesh.mesh"
                        materials: [
                            sunburst_002_material
                        ]
                    }
                }
                Node {
                    id: polo17_mirror_L
                    objectName: "polo17_mirror_L"
                    rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                    scale: Qt.vector3d(100, 100, 100)
                    Model {
                        id: polo17_mirror_L_mirror_0
                        objectName: "polo17_mirror_L_mirror_0"
                        source: "meshes/polo17_mirror_L_mirror_0_002_mesh.mesh"
                        materials: [
                            polo17gauges2_002_material
                        ]
                    }
                    Model {
                        id: polo17_mirror_L_polo17_glass_0
                        objectName: "polo17_mirror_L_polo17_glass_0"
                        source: "meshes/polo17_mirror_L_polo17_glass_0_002_mesh.mesh"
                        materials: [
                            polo17_glass_int_002_material
                        ]
                    }
                    Model {
                        id: polo17_mirror_L_polo17black_0
                        objectName: "polo17_mirror_L_polo17black_0"
                        source: "meshes/polo17_mirror_L_polo17black_0_002_mesh.mesh"
                        materials: [
                            polo17black_002_material
                        ]
                    }
                    Model {
                        id: polo17_mirror_L_polo17body_0
                        objectName: "polo17_mirror_L_polo17body_0"
                        source: "meshes/polo17_mirror_L_polo17body_0_002_mesh.mesh"
                        materials: [
                            polo17body_002_material
                        ]
                    }
                }
                Node {
                    id: polo17_mirror_R
                    objectName: "polo17_mirror_R"
                    rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                    scale: Qt.vector3d(100, 100, 100)
                    Model {
                        id: polo17_mirror_R_mirror_0
                        objectName: "polo17_mirror_R_mirror_0"
                        source: "meshes/polo17_mirror_R_mirror_0_002_mesh.mesh"
                        materials: [
                            polo17gauges2_002_material
                        ]
                    }
                    Model {
                        id: polo17_mirror_R_polo17_glass_0
                        objectName: "polo17_mirror_R_polo17_glass_0"
                        source: "meshes/polo17_mirror_R_polo17_glass_0_002_mesh.mesh"
                        materials: [
                            polo17_glass_int_002_material
                        ]
                    }
                    Model {
                        id: polo17_mirror_R_polo17black_0
                        objectName: "polo17_mirror_R_polo17black_0"
                        source: "meshes/polo17_mirror_R_polo17black_0_002_mesh.mesh"
                        materials: [
                            polo17black_002_material
                        ]
                    }
                    Model {
                        id: polo17_mirror_R_polo17body_0
                        objectName: "polo17_mirror_R_polo17body_0"
                        source: "meshes/polo17_mirror_R_polo17body_0_002_mesh.mesh"
                        materials: [
                            polo17body_002_material
                        ]
                    }
                }
                Node {
                    id: polo17_mirrorsignal_L
                    objectName: "polo17_mirrorsignal_L"
                    rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                    scale: Qt.vector3d(100, 100, 100)
                    Model {
                        id: polo17_mirrorsignal_L_polo17pov_L_0
                        objectName: "polo17_mirrorsignal_L_polo17pov_L_0"
                        source: "meshes/polo17_mirrorsignal_L_polo17pov_L_0_002_mesh.mesh"
                        materials: [
                            polo17gauges2_002_material
                        ]
                    }
                }
                Node {
                    id: polo17_mirrorsignal_R
                    objectName: "polo17_mirrorsignal_R"
                    rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                    scale: Qt.vector3d(100, 100, 100)
                    Model {
                        id: polo17_mirrorsignal_R_polo17pov_R_0
                        objectName: "polo17_mirrorsignal_R_polo17pov_R_0"
                        source: "meshes/polo17_mirrorsignal_R_polo17pov_R_0_002_mesh.mesh"
                        materials: [
                            polo17gauges2_002_material
                        ]
                    }
                }
                Node {
                    id: polo17_needle_speedo
                    objectName: "polo17_needle_speedo"
                    position: Qt.vector3d(25.392, 86.5774, 73.333)
                    rotation: Qt.quaternion(0.804337, -0.594174, 0, 0)
                    scale: Qt.vector3d(100, 100, 100)
                    Model {
                        id: polo17_needle_speedo_polo17black_0
                        objectName: "polo17_needle_speedo_polo17black_0"
                        source: "meshes/polo17_needle_speedo_polo17black_0_002_mesh.mesh"
                        materials: [
                            polo17black_002_material
                        ]
                    }
                    Model {
                        id: polo17_needle_speedo_polo17gauges2_0
                        objectName: "polo17_needle_speedo_polo17gauges2_0"
                        source: "meshes/polo17_needle_speedo_polo17gauges2_0_002_mesh.mesh"
                        materials: [
                            polo17gauges2_002_material
                        ]
                    }
                    Model {
                        id: polo17_needle_speedo_polo17sgray_0
                        objectName: "polo17_needle_speedo_polo17sgray_0"
                        source: "meshes/polo17_needle_speedo_polo17sgray_0_002_mesh.mesh"
                        materials: [
                            polo17gauges2_002_material
                        ]
                    }
                }
                Node {
                    id: polo17_needle_tacho
                    objectName: "polo17_needle_tacho"
                    position: Qt.vector3d(42.6419, 86.6196, 72.6001)
                    rotation: Qt.quaternion(0.814098, -0.580727, 0, 0)
                    scale: Qt.vector3d(100, 100, 100)
                    Model {
                        id: polo17_needle_tacho_polo17black_0
                        objectName: "polo17_needle_tacho_polo17black_0"
                        source: "meshes/polo17_needle_tacho_polo17black_0_002_mesh.mesh"
                        materials: [
                            polo17black_002_material
                        ]
                    }
                    Model {
                        id: polo17_needle_tacho_polo17gauges2_0
                        objectName: "polo17_needle_tacho_polo17gauges2_0"
                        source: "meshes/polo17_needle_tacho_polo17gauges2_0_002_mesh.mesh"
                        materials: [
                            polo17gauges2_002_material
                        ]
                    }
                    Model {
                        id: polo17_needle_tacho_polo17sgray_0
                        objectName: "polo17_needle_tacho_polo17sgray_0"
                        source: "meshes/polo17_needle_tacho_polo17sgray_0_002_mesh.mesh"
                        materials: [
                            polo17gauges2_002_material
                        ]
                    }
                }
                Node {
                    id: polo17_parkingbrake
                    objectName: "polo17_parkingbrake"
                    position: Qt.vector3d(0, 36.3465, 0)
                    rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                    scale: Qt.vector3d(100, 100, 100)
                    Model {
                        id: polo17_parkingbrake_polo17black_0
                        objectName: "polo17_parkingbrake_polo17black_0"
                        source: "meshes/polo17_parkingbrake_polo17black_0_002_mesh.mesh"
                        materials: [
                            polo17black_002_material
                        ]
                    }
                    Model {
                        id: polo17_parkingbrake_polo17plastik_0
                        objectName: "polo17_parkingbrake_polo17plastik_0"
                        source: "meshes/polo17_parkingbrake_polo17plastik_0_002_mesh.mesh"
                        materials: [
                            polo17plastik_002_material
                        ]
                    }
                    Model {
                        id: polo17_parkingbrake_polo17salon2_0
                        objectName: "polo17_parkingbrake_polo17salon2_0"
                        source: "meshes/polo17_parkingbrake_polo17salon2_0_002_mesh.mesh"
                        materials: [
                            polo17salon2_002_material
                        ]
                    }
                }
                Node {
                    id: polo17_radiator
                    objectName: "polo17_radiator"
                    rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                    scale: Qt.vector3d(100, 100, 100)
                    Model {
                        id: polo17_radiator_sunburst_engine_0
                        objectName: "polo17_radiator_sunburst_engine_0"
                        source: "meshes/polo17_radiator_sunburst_engine_0_002_mesh.mesh"
                        materials: [
                            sunburst_engine_002_material
                        ]
                    }
                }
                Node {
                    id: polo17_seats_FL
                    objectName: "polo17_seats_FL"
                    rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                    scale: Qt.vector3d(100, 100, 100)
                    Model {
                        id: polo17_seats_FL_polo17seats2_0
                        objectName: "polo17_seats_FL_polo17seats2_0"
                        source: "meshes/polo17_seats_FL_polo17seats2_0_002_mesh.mesh"
                        materials: [
                            polo17seats2_002_material
                        ]
                    }
                    Model {
                        id: polo17_seats_FL_polo17seats_0
                        objectName: "polo17_seats_FL_polo17seats_0"
                        source: "meshes/polo17_seats_FL_polo17seats_0_002_mesh.mesh"
                        materials: [
                            sunburst_002_material
                        ]
                    }
                }
                Node {
                    id: polo17_seats_FR
                    objectName: "polo17_seats_FR"
                    rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                    scale: Qt.vector3d(100, 100, 100)
                    Model {
                        id: polo17_seats_FR_polo17seats2_0
                        objectName: "polo17_seats_FR_polo17seats2_0"
                        source: "meshes/polo17_seats_FR_polo17seats2_0_002_mesh.mesh"
                        materials: [
                            polo17seats2_002_material
                        ]
                    }
                    Model {
                        id: polo17_seats_FR_polo17seats_0
                        objectName: "polo17_seats_FR_polo17seats_0"
                        source: "meshes/polo17_seats_FR_polo17seats_0_002_mesh.mesh"
                        materials: [
                            sunburst_002_material
                        ]
                    }
                }
                Node {
                    id: polo17_seats_R
                    objectName: "polo17_seats_R"
                    rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                    scale: Qt.vector3d(100, 100, 100)
                    Model {
                        id: polo17_seats_R_polo17seats2_0
                        objectName: "polo17_seats_R_polo17seats2_0"
                        source: "meshes/polo17_seats_R_polo17seats2_0_002_mesh.mesh"
                        materials: [
                            polo17seats2_002_material
                        ]
                    }
                    Model {
                        id: polo17_seats_R_polo17seats_0
                        objectName: "polo17_seats_R_polo17seats_0"
                        source: "meshes/polo17_seats_R_polo17seats_0_002_mesh.mesh"
                        materials: [
                            sunburst_002_material
                        ]
                    }
                }
                Node {
                    id: polo17_shifter_boot_M
                    objectName: "polo17_shifter_boot_M"
                    rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                    scale: Qt.vector3d(100, 100, 100)
                    Model {
                        id: polo17_shifter_boot_M_polo17black_0
                        objectName: "polo17_shifter_boot_M_polo17black_0"
                        source: "meshes/polo17_shifter_boot_M_polo17black_0_002_mesh.mesh"
                        materials: [
                            polo17black_002_material
                        ]
                    }
                }
                Node {
                    id: polo17_shifter_knob_M
                    objectName: "polo17_shifter_knob_M"
                    rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                    scale: Qt.vector3d(100, 100, 100)
                    Model {
                        id: polo17_shifter_knob_M_polo17black_0
                        objectName: "polo17_shifter_knob_M_polo17black_0"
                        source: "meshes/polo17_shifter_knob_M_polo17black_0_002_mesh.mesh"
                        materials: [
                            polo17black_002_material
                        ]
                    }
                    Model {
                        id: polo17_shifter_knob_M_polo17salon2_0
                        objectName: "polo17_shifter_knob_M_polo17salon2_0"
                        source: "meshes/polo17_shifter_knob_M_polo17salon2_0_002_mesh.mesh"
                        materials: [
                            polo17salon2_002_material
                        ]
                    }
                    Model {
                        id: polo17_shifter_knob_M_polo17sgray_0
                        objectName: "polo17_shifter_knob_M_polo17sgray_0"
                        source: "meshes/polo17_shifter_knob_M_polo17sgray_0_002_mesh.mesh"
                        materials: [
                            polo17gauges2_002_material
                        ]
                    }
                }
                Node {
                    id: polo17_signalstalk
                    objectName: "polo17_signalstalk"
                    position: Qt.vector3d(41.1249, 82.094, 57.3368)
                    rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                    scale: Qt.vector3d(100, 100, 100)
                    Model {
                        id: polo17_signalstalk_polo17salon2_0
                        objectName: "polo17_signalstalk_polo17salon2_0"
                        source: "meshes/polo17_signalstalk_polo17salon2_0_002_mesh.mesh"
                        materials: [
                            polo17salon2_002_material
                        ]
                    }
                }
                Node {
                    id: polo17_steer
                    objectName: "polo17_steer"
                    position: Qt.vector3d(34.3058, 83.3387, 54.7334)
                    rotation: Qt.quaternion(-0.22454, 0.974465, 0, 0)
                    scale: Qt.vector3d(100, 100, 100)
                    Model {
                        id: polo17_steer_polo17black_0
                        objectName: "polo17_steer_polo17black_0"
                        source: "meshes/polo17_steer_polo17black_0_002_mesh.mesh"
                        materials: [
                            polo17black_002_material
                        ]
                    }
                    Model {
                        id: polo17_steer_polo17chrome_0
                        objectName: "polo17_steer_polo17chrome_0"
                        source: "meshes/polo17_steer_polo17chrome_0_002_mesh.mesh"
                        materials: [
                            polo17chrome_002_material
                        ]
                    }
                    Model {
                        id: polo17_steer_polo17gauges2_0
                        objectName: "polo17_steer_polo17gauges2_0"
                        source: "meshes/polo17_steer_polo17gauges2_0_002_mesh.mesh"
                        materials: [
                            polo17gauges2_002_material
                        ]
                    }
                    Model {
                        id: polo17_steer_polo17salon2_0
                        objectName: "polo17_steer_polo17salon2_0"
                        source: "meshes/polo17_steer_polo17salon2_0_002_mesh.mesh"
                        materials: [
                            polo17salon2_002_material
                        ]
                    }
                }
                Node {
                    id: polo17_strut_F
                    objectName: "polo17_strut_F"
                    rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                    scale: Qt.vector3d(100, 100, 100)
                    Model {
                        id: polo17_strut_F_sunburst_0
                        objectName: "polo17_strut_F_sunburst_0"
                        source: "meshes/polo17_strut_F_sunburst_0_002_mesh.mesh"
                        materials: [
                            sunburst_002_material
                        ]
                    }
                }
                Node {
                    id: polo17_subframe_F
                    objectName: "polo17_subframe_F"
                    rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                    scale: Qt.vector3d(100, 100, 100)
                    Model {
                        id: polo17_subframe_F_sunburst_0
                        objectName: "polo17_subframe_F_sunburst_0"
                        source: "meshes/polo17_subframe_F_sunburst_0_002_mesh.mesh"
                        materials: [
                            sunburst_002_material
                        ]
                    }
                }
                Node {
                    id: polo17_subframe_R
                    objectName: "polo17_subframe_R"
                    rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                    scale: Qt.vector3d(100, 100, 100)
                    Model {
                        id: polo17_subframe_R_sunburst_0
                        objectName: "polo17_subframe_R_sunburst_0"
                        source: "meshes/polo17_subframe_R_sunburst_0_002_mesh.mesh"
                        materials: [
                            sunburst_002_material
                        ]
                    }
                }
                Node {
                    id: polo17_swaybar_F
                    objectName: "polo17_swaybar_F"
                    rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                    scale: Qt.vector3d(100, 100, 100)
                    Model {
                        id: polo17_swaybar_F_sunburst_0
                        objectName: "polo17_swaybar_F_sunburst_0"
                        source: "meshes/polo17_swaybar_F_sunburst_0_002_mesh.mesh"
                        materials: [
                            sunburst_002_material
                        ]
                    }
                }
                Node {
                    id: polo17_swaybar_R
                    objectName: "polo17_swaybar_R"
                    rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                    scale: Qt.vector3d(100, 100, 100)
                    Model {
                        id: polo17_swaybar_R_sunburst_0
                        objectName: "polo17_swaybar_R_sunburst_0"
                        source: "meshes/polo17_swaybar_R_sunburst_0_002_mesh.mesh"
                        materials: [
                            sunburst_002_material
                        ]
                    }
                }
                Node {
                    id: polo17_taillight_L
                    objectName: "polo17_taillight_L"
                    rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                    scale: Qt.vector3d(100, 100, 100)
                    Model {
                        id: polo17_taillight_L_polo17gabarit_0
                        objectName: "polo17_taillight_L_polo17gabarit_0"
                        source: "meshes/polo17_taillight_L_polo17gabarit_0_002_mesh.mesh"
                        materials: [
                            polo17gabarit_002_material
                        ]
                    }
                    Model {
                        id: polo17_taillight_L_polo17lightR_0
                        objectName: "polo17_taillight_L_polo17lightR_0"
                        source: "meshes/polo17_taillight_L_polo17lightR_0_002_mesh.mesh"
                        materials: [
                            polo17lightR_002_material
                        ]
                    }
                    Model {
                        id: polo17_taillight_L_polo17pov_L_0
                        objectName: "polo17_taillight_L_polo17pov_L_0"
                        source: "meshes/polo17_taillight_L_polo17pov_L_0_002_mesh.mesh"
                        materials: [
                            polo17gauges2_002_material
                        ]
                    }
                    Model {
                        id: polo17_taillight_L_polo17reve_0
                        objectName: "polo17_taillight_L_polo17reve_0"
                        source: "meshes/polo17_taillight_L_polo17reve_0_002_mesh.mesh"
                        materials: [
                            polo17gauges2_002_material
                        ]
                    }
                    Model {
                        id: polo17_taillight_L_polo17stop_0
                        objectName: "polo17_taillight_L_polo17stop_0"
                        source: "meshes/polo17_taillight_L_polo17stop_0_002_mesh.mesh"
                        materials: [
                            polo17stop_002_material
                        ]
                    }
                }
                Node {
                    id: polo17_taillight_R
                    objectName: "polo17_taillight_R"
                    rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                    scale: Qt.vector3d(100, 100, 100)
                    Model {
                        id: polo17_taillight_R_polo17gabarit_0
                        objectName: "polo17_taillight_R_polo17gabarit_0"
                        source: "meshes/polo17_taillight_R_polo17gabarit_0_002_mesh.mesh"
                        materials: [
                            polo17gabarit_002_material
                        ]
                    }
                    Model {
                        id: polo17_taillight_R_polo17lightR_0
                        objectName: "polo17_taillight_R_polo17lightR_0"
                        source: "meshes/polo17_taillight_R_polo17lightR_0_002_mesh.mesh"
                        materials: [
                            polo17lightR_002_material
                        ]
                    }
                    Model {
                        id: polo17_taillight_R_polo17pov_R_0
                        objectName: "polo17_taillight_R_polo17pov_R_0"
                        source: "meshes/polo17_taillight_R_polo17pov_R_0_002_mesh.mesh"
                        materials: [
                            polo17gauges2_002_material
                        ]
                    }
                    Model {
                        id: polo17_taillight_R_polo17reve_0
                        objectName: "polo17_taillight_R_polo17reve_0"
                        source: "meshes/polo17_taillight_R_polo17reve_0_002_mesh.mesh"
                        materials: [
                            polo17gauges2_002_material
                        ]
                    }
                    Model {
                        id: polo17_taillight_R_polo17stop_0
                        objectName: "polo17_taillight_R_polo17stop_0"
                        source: "meshes/polo17_taillight_R_polo17stop_0_002_mesh.mesh"
                        materials: [
                            polo17stop_002_material
                        ]
                    }
                }
                Node {
                    id: polo17_taillightglass_L
                    objectName: "polo17_taillightglass_L"
                    rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                    scale: Qt.vector3d(100, 100, 100)
                    Model {
                        id: polo17_taillightglass_L_polo17lightglass_R_0
                        objectName: "polo17_taillightglass_L_polo17lightglass_R_0"
                        source: "meshes/polo17_taillightglass_L_polo17lightglass_R_0_002_mesh.mesh"
                        materials: [
                            polo17lightglass_R_002_material
                        ]
                    }
                }
                Node {
                    id: polo17_taillightglass_R
                    objectName: "polo17_taillightglass_R"
                    rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                    scale: Qt.vector3d(100, 100, 100)
                    Model {
                        id: polo17_taillightglass_R_polo17lightglass_R_0
                        objectName: "polo17_taillightglass_R_polo17lightglass_R_0"
                        source: "meshes/polo17_taillightglass_R_polo17lightglass_R_0_002_mesh.mesh"
                        materials: [
                            polo17lightglass_R_002_material
                        ]
                    }
                }
                Node {
                    id: polo17_tierod_F
                    objectName: "polo17_tierod_F"
                    rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                    scale: Qt.vector3d(100, 100, 100)
                    Model {
                        id: polo17_tierod_F_sunburst_0
                        objectName: "polo17_tierod_F_sunburst_0"
                        source: "meshes/polo17_tierod_F_sunburst_0_002_mesh.mesh"
                        materials: [
                            sunburst_002_material
                        ]
                    }
                }
                Node {
                    id: polo17_trailingarm_R
                    objectName: "polo17_trailingarm_R"
                    rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                    scale: Qt.vector3d(100, 100, 100)
                    Model {
                        id: polo17_trailingarm_R_sunburst_0
                        objectName: "polo17_trailingarm_R_sunburst_0"
                        source: "meshes/polo17_trailingarm_R_sunburst_0_002_mesh.mesh"
                        materials: [
                            sunburst_002_material
                        ]
                    }
                }
                Node {
                    id: polo17_transmission_awd
                    objectName: "polo17_transmission_awd"
                    rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                    scale: Qt.vector3d(100, 100, 100)
                    Model {
                        id: polo17_transmission_awd_sunburst_0
                        objectName: "polo17_transmission_awd_sunburst_0"
                        source: "meshes/polo17_transmission_awd_sunburst_0_002_mesh.mesh"
                        materials: [
                            sunburst_002_material
                        ]
                    }
                }
                // Trunk
                Node {
                    id: polo17_trunk
                    objectName: "polo17_trunk"
                    rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                    scale: Qt.vector3d(100, 100, 100)
                    Model {
                        id: polo17_trunk_polo17black_0
                        objectName: "polo17_trunk_polo17black_0"
                        source: "meshes/polo17_trunk_polo17black_0_002_mesh.mesh"
                        materials: [
                            polo17black_002_material
                        ]
                    }
                    Model {
                        id: polo17_trunk_polo17body_0
                        objectName: "polo17_trunk_polo17body_0"
                        source: "meshes/polo17_trunk_polo17body_0_002_mesh.mesh"
                        materials: [
                            polo17body_002_material
                        ]
                    }
                    Model {
                        id: polo17_trunk_polo17chrome_0
                        objectName: "polo17_trunk_polo17chrome_0"
                        source: "meshes/polo17_trunk_polo17chrome_0_002_mesh.mesh"
                        materials: [
                            polo17chrome_002_material
                        ]
                    }
                    Model {
                        id: polo17_trunk_polo17plastik_0
                        objectName: "polo17_trunk_polo17plastik_0"
                        source: "meshes/polo17_trunk_polo17plastik_0_002_mesh.mesh"
                        materials: [
                            polo17plastik_002_material
                        ]
                    }
                }
                Node {
                    id: polo17_tubs_FL
                    objectName: "polo17_tubs_FL"
                    rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                    scale: Qt.vector3d(100, 100, 100)
                    Model {
                        id: polo17_tubs_FL_polo17black_0
                        objectName: "polo17_tubs_FL_polo17black_0"
                        source: "meshes/polo17_tubs_FL_polo17black_0_002_mesh.mesh"
                        materials: [
                            polo17black_002_material
                        ]
                    }
                }
                Node {
                    id: polo17_tubs_FR
                    objectName: "polo17_tubs_FR"
                    rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                    scale: Qt.vector3d(100, 100, 100)
                    Model {
                        id: polo17_tubs_FR_polo17black_0
                        objectName: "polo17_tubs_FR_polo17black_0"
                        source: "meshes/polo17_tubs_FR_polo17black_0_002_mesh.mesh"
                        materials: [
                            polo17black_002_material
                        ]
                    }
                }
                Node {
                    id: polo17_unebody
                    objectName: "polo17_unebody"
                    rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                    scale: Qt.vector3d(100, 100, 100)
                    Model {
                        id: polo17_unebody_polo17black_0
                        objectName: "polo17_unebody_polo17black_0"
                        source: "meshes/polo17_unebody_polo17black_0_002_mesh.mesh"
                        materials: [
                            polo17black_002_material
                        ]
                    }
                    Model {
                        id: polo17_unebody_sunburst_0
                        objectName: "polo17_unebody_sunburst_0"
                        source: "meshes/polo17_unebody_sunburst_0_002_mesh.mesh"
                        materials: [
                            sunburst_002_material
                        ]
                    }
                }
                Node {
                    id: polo17_upperarm_R
                    objectName: "polo17_upperarm_R"
                    rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                    scale: Qt.vector3d(100, 100, 100)
                    Model {
                        id: polo17_upperarm_R_sunburst_0
                        objectName: "polo17_upperarm_R_sunburst_0"
                        source: "meshes/polo17_upperarm_R_sunburst_0_002_mesh.mesh"
                        materials: [
                            sunburst_002_material
                        ]
                    }
                }
                Node {
                    id: polo17_windshield
                    objectName: "polo17_windshield"
                    rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                    scale: Qt.vector3d(100, 100, 100)
                    Model {
                        id: polo17_windshield_polo17_glass_0
                        objectName: "polo17_windshield_polo17_glass_0"
                        source: "meshes/polo17_windshield_polo17_glass_0_002_mesh.mesh"
                        materials: [
                            polo17_glass_int_002_material
                        ]
                    }
                }
                Node {
                    id: polo17_wiperL
                    objectName: "polo17_wiperL"
                    position: Qt.vector3d(45.9229, 92.0844, 115.811)
                    rotation: Qt.quaternion(0.902467, -0.427263, 0.054567, 0.0046501)
                    scale: Qt.vector3d(100, 100, 100)
                    Model {
                        id: polo17_wiperL_polo17black_0
                        objectName: "polo17_wiperL_polo17black_0"
                        source: "meshes/polo17_wiperL_polo17black_0_002_mesh.mesh"
                        materials: [
                            polo17black_002_material
                        ]
                    }
                }
                Node {
                    id: polo17_wiperR
                    objectName: "polo17_wiperR"
                    position: Qt.vector3d(17.1307, 93.3975, 119.826)
                    rotation: Qt.quaternion(0.901488, -0.428261, 0.0571636, 0.0253923)
                    scale: Qt.vector3d(100, 100, 100)
                    Model {
                        id: polo17_wiperR_polo17black_0
                        objectName: "polo17_wiperR_polo17black_0"
                        source: "meshes/polo17_wiperR_polo17black_0_002_mesh.mesh"
                        materials: [
                            polo17black_002_material
                        ]
                    }
                }
                Node {
                    id: polo17_wipers
                    objectName: "polo17_wipers"
                    rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                    scale: Qt.vector3d(100, 100, 100)
                    Model {
                        id: polo17_wipers_polo17black_0
                        objectName: "polo17_wipers_polo17black_0"
                        source: "meshes/polo17_wipers_polo17black_0_002_mesh.mesh"
                        materials: [
                            polo17black_002_material
                        ]
                    }
                }
                Node {
                    id: polo17_wiperstalk
                    objectName: "polo17_wiperstalk"
                    position: Qt.vector3d(26.755, 82.094, 57.3368)
                    rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                    scale: Qt.vector3d(100, 100, 100)
                    Model {
                        id: polo17_wiperstalk_polo17salon2_0
                        objectName: "polo17_wiperstalk_polo17salon2_0"
                        source: "meshes/polo17_wiperstalk_polo17salon2_0_002_mesh.mesh"
                        materials: [
                            polo17salon2_002_material
                        ]
                    }
                }
                // Front Right Wheel
                Node {
                    id: polo17wheel
                    objectName: "polo17wheel"
                    position: Qt.vector3d(-71.3512, 28.4852, 129.428)
                    rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                    scale: Qt.vector3d(100, 88.9373, 88.9373)
                    Model {
                        id: polo17wheel_polo17black_0
                        objectName: "polo17wheel_polo17black_0"
                        source: "meshes/polo17wheel_polo17black_0_002_mesh.mesh"
                        materials: [
                            polo17black_002_material
                        ]
                    }
                    Model {
                        id: polo17wheel_polo17wheel_0
                        objectName: "polo17wheel_polo17wheel_0"
                        source: "meshes/polo17wheel_polo17wheel_0_002_mesh.mesh"
                        materials: [
                            polo17wheel_002_material
                        ]
                    }
                    Node {
                        id: tire_01a_16x7_25
                        objectName: "tire_01a_16x7_25"
                        scale: Qt.vector3d(0.01, 0.01, 0.01)
                        Model {
                            id: tire_01a_16x7_25_tire_01a_0
                            objectName: "tire_01a_16x7_25_tire_01a_0"
                            position: Qt.vector3d(-7.62939e-06, 6.9559e-06, -3.39358e-06)
                            source: "meshes/tire_01a_16x7_25_tire_01a_0_002_mesh.mesh"
                            materials: [
                                tire_01a_002_material
                            ]
                        }
                    }
                }
                // Rear Right Wheel
                Node {
                    id: polo17wheel_001
                    objectName: "polo17wheel.001"
                    position: Qt.vector3d(-74.8212, 28.4852, -127.572)
                    rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                    scale: Qt.vector3d(100, 88.9373, 88.9373)
                    Model {
                        id: polo17wheel_001_polo17black_0
                        objectName: "polo17wheel.001_polo17black_0"
                        source: "meshes/polo17wheel_001_polo17black_0_002_mesh.mesh"
                        materials: [
                            polo17black_002_material
                        ]
                    }
                    Model {
                        id: polo17wheel_001_polo17wheel_0
                        objectName: "polo17wheel.001_polo17wheel_0"
                        source: "meshes/polo17wheel_001_polo17wheel_0_002_mesh.mesh"
                        materials: [
                            polo17wheel_002_material
                        ]
                    }
                    Node {
                        id: tire_01a_16x7_25_001
                        objectName: "tire_01a_16x7_25.001"
                        scale: Qt.vector3d(0.01, 0.01, 0.01)
                        Model {
                            id: tire_01a_16x7_25_001_tire_01a_0
                            objectName: "tire_01a_16x7_25.001_tire_01a_0"
                            position: Qt.vector3d(-7.62939e-06, -8.30289e-06, -4.77703e-06)
                            source: "meshes/tire_01a_16x7_25_001_tire_01a_0_002_mesh.mesh"
                            materials: [
                                tire_01a_002_material
                            ]
                        }
                    }
                }
                // Rear Left Wheel
                Node {
                    id: polo17wheel_002
                    objectName: "polo17wheel.002"
                    position: Qt.vector3d(70.7198, 28.4852, -127.572)
                    rotation: Qt.quaternion(-1.37679e-07, -1.00486e-14, 0.707107, 0.707107)
                    scale: Qt.vector3d(100, 88.9373, 88.9373)
                    Model {
                        id: polo17wheel_002_polo17black_0
                        objectName: "polo17wheel.002_polo17black_0"
                        source: "meshes/polo17wheel_002_polo17black_0_002_mesh.mesh"
                        materials: [
                            polo17black_002_material
                        ]
                    }
                    Model {
                        id: polo17wheel_002_polo17wheel_0
                        objectName: "polo17wheel.002_polo17wheel_0"
                        source: "meshes/polo17wheel_002_polo17wheel_0_002_mesh.mesh"
                        materials: [
                            polo17wheel_002_material
                        ]
                    }
                    Node {
                        id: tire_01a_16x7_25_002
                        objectName: "tire_01a_16x7_25.002"
                        scale: Qt.vector3d(0.01, 0.01, 0.01)
                        Model {
                            id: tire_01a_16x7_25_002_tire_01a_0
                            objectName: "tire_01a_16x7_25.002_tire_01a_0"
                            position: Qt.vector3d(-3.90183e-06, 6.15058e-06, 0)
                            source: "meshes/tire_01a_16x7_25_002_tire_01a_0_002_mesh.mesh"
                            materials: [
                                tire_01a_002_material
                            ]
                        }
                    }
                }
                // Front Left Wheel
                Node {
                    id: polo17wheel_003
                    objectName: "polo17wheel.003"
                    position: Qt.vector3d(70.7198, 28.4852, 129.428)
                    rotation: Qt.quaternion(-1.37679e-07, -1.00486e-14, 0.707107, 0.707107)
                    scale: Qt.vector3d(100, 88.9373, 88.9373)
                    Model {
                        id: polo17wheel_003_polo17black_0
                        objectName: "polo17wheel.003_polo17black_0"
                        source: "meshes/polo17wheel_003_polo17black_0_002_mesh.mesh"
                        materials: [
                            polo17black_002_material
                        ]
                    }
                    Model {
                        id: polo17wheel_003_polo17wheel_0
                        objectName: "polo17wheel.003_polo17wheel_0"
                        source: "meshes/polo17wheel_003_polo17wheel_0_002_mesh.mesh"
                        materials: [
                            polo17wheel_002_material
                        ]
                    }
                    Node {
                        id: tire_01a_16x7_25_003
                        objectName: "tire_01a_16x7_25.003"
                        scale: Qt.vector3d(0.01, 0.01, 0.01)
                        Model {
                            id: tire_01a_16x7_25_003_tire_01a_0
                            objectName: "tire_01a_16x7_25.003_tire_01a_0"
                            position: Qt.vector3d(-3.00451e-06, 6.1506e-06, -2.06707e-06)
                            source: "meshes/tire_01a_16x7_25_003_tire_01a_0_002_mesh.mesh"
                            materials: [
                                tire_01a_002_material
                            ]
                        }
                    }
                }
            }
        }
    }

    // Animations:
}
