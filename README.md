# NCSA_Mosaic
## Modern Linux port of the original 1997 NCSA Mosaic version 2.7.5

The University of Illinois released the UNIX version of Mosaic into the public domain, so
we obtained it from here

[https://archives.library.illinois.edu/erec/University%20Archives/0705012/Unix/source/](https://archives.library.illinois.edu/erec/University%20Archives/0705012/Unix/source/)

Mosaic was written in the C programming language and the UNIX version uses the X11 (and Motif) as the windowing system. The original build system included 'make' files for several UNIX systems and later GNU automake was added. We added a build based on Qt because it provides an IDE with a built in debugger. To install Qt on linux

```
sudo apt-get install qt5-default qtcreator
```

The source code assumes the existence of the file 'config.h' at root, genereated by GNU automake. This file includes several pre-processor macros but is not needed for the Qt build, and can be generated with

```
touch config.h
```

The main Qt project file Mosaic.pro is located at root and it has the following contents

```
TEMPLATE = subdirs
SUBDIRS = libwww2 libXmx libhtmlw libnut src
```

which lists 4 subdirectories with libraries and the directory 'src', where the main program is located. To build, do at a command prompt at the root directory

```
/usr/bin/qmake -r
make
```







