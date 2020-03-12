QT       += dbus

QT       -= gui
TEMPLATE = lib
TARGET = xsettings

CONFIG += c++11 plugin link_pkgconfig
CONFIG -= app_bundle

DEFINES += QT_DEPRECATED_WARNINGS

include($$PWD/../../common/common.pri)

PKGCONFIG += glib-2.0
             gio-2.0

INCLUDEPATH += \
        -I /usr/include/gtk-3.0/gdk \
        -I /usr/include/gtk-3.0     \
        -I /usr/include/pango-1.0   \
        -I /usr/include/cairo       \
        -I /usr/include/gdk-pixbuf-2.0  \
        -I /usr/include/atk-1.0     \
        -I $$PWD/../../common

SOURCES += \
    xsettings.cpp \
    xsettings-manager.cpp \
    xsettings-common.c \
    ukui-xsettings-manager.cpp \
    fontconfig-monitor.c \
    ukui-xft-settings.cpp

HEADERS += \
    xsettings.h \
    ixsettings-manager.h \
    xsettings-manager.h \
    ixsettings-manager.h \
    ukui-xsettings-manager.h \
    fontconfig-monitor.h \
    ukui-xft-settings.h \
    xsettings-const.h \
    xsettings-common.h


DESTDIR = $$PWD/../../library/

DISTFILES += \
    Makefile