include(../defaults.pri)

QT         += core gui opengl widgets
DEFINES    += _DEPTHMAP
TEMPLATE   = app
TARGET     = depthmapX
ICON       = icons/depthmapX.icns
SOURCES    = main.cpp

win32:RC_ICONS += icons/depthmapX.ico

win32:Release:LIBS += -L../depthmapX/release -L../genlib/release -L../salalib/release
win32:Debug:LIBS += -L../depthmapX/debug -L../genlib/debug -L../salalib/debug
!win32:LIBS += -L../depthmapX -L../genlib -L../salalib

LIBS += -ldepthmapX -lsalalib -lgenlib

!win32:!macx:LIBS += -L/usr/lib/i386-linux-gnu/

!win32:!macx:LIBS += -lGL -lGLU


win32:LIBS += -lOpenGl32 -lglu32 -lgdi32


