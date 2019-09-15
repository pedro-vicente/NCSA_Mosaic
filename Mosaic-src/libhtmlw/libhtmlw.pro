TEMPLATE = lib
CONFIG += staticlib
CONFIG -= qt 
CONFIG += debug
QMAKE_CFLAGS += -w -g -DMOTIF1_2 -DLINUX -DPRERELEASE -Wall -Wno-parentheses -Wno-switch -Wno-switch-enum -Wno-char-subscripts -Wno-unused-result
QMAKE_CFLAGS += -DMOTIF -DXMOSAIC
SOURCES += HTML.c HTMLlists.c HTMLformat.c HTMLparse.c HTMLimages.c HTMLwidgets.c HTML-PSformat.c DrawingArea.c HTMLjot.c HTMLtable.c list.c
HEADERS += DrawingArea.h DrawingAreaP.h HTMLamp.h HTML.h HTMLP.h inkstore.h list.h listP.h

