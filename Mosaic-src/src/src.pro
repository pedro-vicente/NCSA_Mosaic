TEMPLATE = app
TARGET = Mosaic
CONFIG += console
CONFIG -= qt 
CONFIG += debug
QMAKE_CFLAGS += -w -g -DMOTIF1_2 -DLINUX
INCLUDEPATH += .. ../libwww2
SOURCES += main.c gui.c  gui-dialogs.c gui-menubar.c gui-documents.c gui-news.c newsrc.c\
  gui-extras.c mo-www.c mo-dtm.c hotlist.c history.c\
  annotate.c pan.c grpan.c grpan-www.c audan.c globalhist.c img.c\
  picread.c xpmhash.c xpmread.c gifread.c pixmaps.c\
  medcut.c mo-hdf.c hotfile.c child.c mailto.c readJPEG.c readPNG.c\
  accept.c cciServer.c cciBindings.c cciBindings2.c support.c bla.c\
  comment.c kcms.c md5.c proxy-dialogs.c proxy-misc.c gui-popup.c gui-ftp.c\
  prefs.c
HEADERS += accept.h cciBindings.h gifread.h gui-documents.h gui-news.h hotlist.h listP.h\
  memStuffForPipSqueeks.h newsrc.h prefs_defs.h readJPEG.h xpmhash.h\
  annotate.h cci.h globalhist.h gui-extras.h gui-popup.h img.h mailto.h mo-dtm.h pan.h prefs.h readPNG.h xpmread.h\
  audan.h cciServer.h grpan.h gui-ftp.h hdf-browse.h international.h main.h mo-hdf.h picread.h proxy-dialogs.h  upport.h\
  xresources.h bla.h child.h grpan-www.h gui.h history.h kcms.h md5.h mosaic.h pixmaps.h proxy.h toolbar.h\
  cciBindings2.h comment.h gui-dialogs.h gui-menubar.h hotfile.h list.h medcut.h mo-www.h\
  port.h proxy-misc.h xpm.h
LIBS += -L../libwww2 -llibwww2 -L../libXmx -llibXmx -L../libhtmlw -llibhtmlw -L../libnut -llibnut -lXext -lXpm -lXm -lXmu -lXt -lX11 -lICE -lSM 



