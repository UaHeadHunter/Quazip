#-------------------------------------------------
#
# Project created by QtCreator 2015-06-29T21:03:10
#
#-------------------------------------------------

QT       += core

QT       -= gui

TARGET = quazip_project
CONFIG   += console
CONFIG   -= app_bundle

TEMPLATE = app
LIBS += -L$$PWD\Quazip\lib\ -lquazip
INCLUDEPATH +=$$PWDQuazip\include\quazip

SOURCES += main.cpp
