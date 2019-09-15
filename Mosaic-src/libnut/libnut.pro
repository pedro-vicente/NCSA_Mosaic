TEMPLATE = lib
CONFIG += staticlib
CONFIG -= qt 
CONFIG += debug
QMAKE_CFLAGS += -w -g -DMOTIF1_2 -DLINUX
SOURCES += ellipsis.c mm.c str-tools.c system.c url-utils.c
HEADERS += mm.h str-tools.h system.h url-utils.h

