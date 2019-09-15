TEMPLATE = lib
CONFIG += staticlib
CONFIG -= qt 
CONFIG += debug
QMAKE_CFLAGS += -w -g -DMOTIF1_2 -DLINUX
SOURCES += Xmx.c Xmx2.c
HEADERS += Xmx.h XmxP.h

