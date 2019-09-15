TEMPLATE = lib
CONFIG += staticlib
CONFIG -= qt 
CONFIG += debug
QMAKE_CFLAGS += -w -g -DMOTIF1_2 -DLINUX
SOURCES += CUkerb.c HTAccess.c HTAlert.c HTAnchor.c HTAtom.c HTSort.c HTChunk.c \
  HTFTP.c HTFWriter.c HTFile.c HTFormat.c HTGopher.c HTInit.c HTList.c \
  HTMIME.c HTML.c HTMLDTD.c HTMLGen.c HTNews.c HTParse.c HTPlain.c \
  HTMosaicHTML.c HTString.c HTTCP.c HTTP.c HTTelnet.c HTWSRC.c HTWriter.c \
  SGML.c HTWAIS.c HTIcon.c HTCompressed.c HTAAUtil.c HTAssoc.c HTUU.c \
  HTAABrow.c HTMailto.c
HEADERS += HTAABrow.h HTAccess.h HTAtom.h HTFile.h HTGroup.h HTMLDTD.h HTParse.h HTString.h\
 HTUU.h tcp.h HTAAFile.h HTACL.h HTAuth.h HTFormat.h HTInit.h HTMLGen.h HTPasswd.h HTTCP.h\
 HTWAIS.h HTAAProt.h HTAlert.h HTChunk.h HTFTP.h HTLex.h HTML.h HTPlain.h HTTelnet.h HTWriter.h\
 HTAAServ.h HTAnchor.h HTCompressed.h HTFWriter.h HTList.h HTMosaicHTML.h HTSort.h HTTP.h HTWSRC.h\
 HTAAUtil.h HTAssoc.h HText.h HTGopher.h HTMIME.h HTNews.h HTStream.h HTUtils.h SGML.h



