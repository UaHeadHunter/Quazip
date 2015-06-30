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
INCLUDEPATH +=$$PWD\Quazip\include\quazip
DESTDIR = $$MAIN_BUILD_DIR/bin
win32{
    ZLIB_FILE_PATH = $$_PRO_FILE_PWD_/zlib1.dll

    ZLIB_FILE_PATH ~= s,/,\\,g
    DESTDIR  ~= s,/,\\,g

    QMAKE_POST_LINK +=  $${QMAKE_COPY} $$quote($$ZLIB_FILE_PATH) $$quote($${DESTDIR}) $$escape_expand(\\n\\t)
}
SOURCES += main.cpp
