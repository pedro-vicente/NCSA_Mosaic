# NCSA_Mosaic
## Modern Linux port of the original 1997 NCSA Mosaic version 2.7.5

The University of Illinois released the UNIX version of Mosaic into the public domain, so
we obtained it from here

[https://archives.library.illinois.edu/erec/University%20Archives/0705012/Unix/source/](https://archives.library.illinois.edu/erec/University%20Archives/0705012/Unix/source/)

##Build

We used Linux Ubuntu 18.04. Mosaic was written in the C programming language and the UNIX version uses the X11 (and Motif) as the windowing system. To install these libraries on Ubuntu Linux 18.04 do

```
sudo apt-get install libxt-dev
sudo apt-get install libmotif-dev
sudo apt-get install libxmu-headers
```

The original build system included 'make' files for several UNIX systems and later GNU automake was added. We added a build based on Qt because it provides an IDE with a built in debugger. To install Qt on linux

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

which lists 4 subdirectories with libraries and the sudo apt-get install libxmu-headersdirectory 'src', where the main program is located. To build, do at a command prompt at the root directory

```
/usr/bin/qmake -r
make
```

##Fixing compiling errors

###libwww2

Mosaic uses 'libwww', the original World Wide Web C library written by its inventor, Tim Berners-Lee. The source included an implementation of the function 'getline'

```
static int getline(char *s, int n, FILE *f)
```
that was standardized in POSIX.1-2008, so we can just comment this definition. I also includes a declaration of

```
extern char *sys_errlist[];
```

that in recent Linux musbe be changed to

```
extern const char *const sys_errlist[];
```





