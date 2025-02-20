cmake_minimum_required(VERSION 3.16)

project(HSC VERSION 0.1 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD_REQUIRED ON)

set(CMAKE_AUTORCC ON)

find_package(Qt6 REQUIRED COMPONENTS Quick)

qt_standard_project_setup(REQUIRES 6.5)

qt_add_executable(appHSC
    CPP/main.cpp
    HSC_Resources.qrc

)

qt_add_qml_module(appHSC
    URI HSC
    VERSION 1.0
    QML_FILES
        QML/Main.qml
        QML/MainDashBoard.qml
    SOURCES
        CPP/controllers/audiocontroller.cpp
        CPP/controllers/audiocontroller.h
        CPP/controllers/lightcontroller.cpp
        CPP/controllers/lightcontroller.h
        CPP/controllers/lockcontroller.cpp
        CPP/controllers/lockcontroller.h
        CPP/controllers/speedcontroller.cpp
        CPP/controllers/speedcontroller.h
)

# Qt for iOS sets MACOSX_BUNDLE_GUI_IDENTIFIER automatically since Qt 6.1.
# If you are developing for iOS or macOS you should consider setting an
# explicit, fixed bundle identifier manually though.
set_target_properties(appHSC PROPERTIES
#    MACOSX_BUNDLE_GUI_IDENTIFIER com.example.appHSC
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

target_link_libraries(appHSC
    PRIVATE Qt6::Quick
)

include(GNUInstallDirs)
install(TARGETS appHSC
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)
