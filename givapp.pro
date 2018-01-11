#-------------------------------------------------
#
# Project created by QtCreator 2018-01-11T13:01:52
#
#-------------------------------------------------

QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = givapp
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


SOURCES += \
        src/main.cpp \
        src/mainwindow.cpp \
        src/player.cpp

HEADERS += \
        src/mainwindow.h \
        src/player.h

FORMS += \
        src/mainwindow.ui

win32: LIBS += -L$$PWD/3rdparty/opencv-3.4.0/x86/mingw/lib/ -llibopencv_core340.dll -llibopencv_highgui340.dll -llibopencv_imgproc340.dll

INCLUDEPATH += $$PWD/3rdparty/opencv-3.4.0/include
DEPENDPATH += $$PWD/3rdparty/opencv-3.4.0/include

win32:!win32-g++: PRE_TARGETDEPS += $$PWD/3rdparty/opencv-3.4.0/x86/mingw/lib/libopencv_core340.dll.lib
else:win32-g++: PRE_TARGETDEPS += $$PWD/3rdparty/opencv-3.4.0/x86/mingw/lib/libopencv_core340.dll.a

win32:!win32-g++: PRE_TARGETDEPS += $$PWD/3rdparty/opencv-3.4.0/x86/mingw/lib/libopencv_highgui340.dll.lib
else:win32-g++: PRE_TARGETDEPS += $$PWD/3rdparty/opencv-3.4.0/x86/mingw/lib/libopencv_highgui340.dll.a

win32:!win32-g++: PRE_TARGETDEPS += $$PWD/3rdparty/opencv-3.4.0/x86/mingw/lib/libopencv_imgproc340.dll.lib
else:win32-g++: PRE_TARGETDEPS += $$PWD/3rdparty/opencv-3.4.0/x86/mingw/lib/libopencv_imgproc340.dll.a
