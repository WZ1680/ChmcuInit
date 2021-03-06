#-------------------------------------------------
#
# Project created by QtCreator 2020-12-24T13:31:48
#
#-------------------------------------------------

QT      += core gui
QT      += xml
greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = ChmcuInit
TEMPLATE = app

# The following define makes your compiler emit warnings if you use
# any feature of Qt which has been marked as deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

CONFIG += c++11

SOURCES += \
        keil/keil_xml.cpp \
        main.cpp \
        master.cpp \
        mcu/mcu.cpp \
        mcu/mcu_chip.cpp \
        mcu/mcu_pin.cpp \
        mcu/mcu_scene.cpp \
        mcu/mcu_tssop24.cpp \
        mcu/mcu_xml.cpp

HEADERS += \
        keil/keil_xml.h \
        master.h \
        mcu/mcu.h \
        mcu/mcu_chip.h \
        mcu/mcu_pin.h \
        mcu/mcu_scene.h \
        mcu/mcu_tssop24.h \
        mcu/mcu_xml.h

FORMS += \
        master.ui

INCLUDEPATH += \
        keil\
        mcu
# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

RESOURCES += \
    res.qrc
