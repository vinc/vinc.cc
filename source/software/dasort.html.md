---
title: DaSort
---

DaSort
======

DaSort is a CLI tool for organizing by creation date.

It is written in Python and it requires the `pyexiv2` module to read Exif data
stored in pictures. The `argparse` module is also required but it is included
by default in Python 2.7.

A duplication detection algorithm is built in DaSort to skip duplicate
pictures without forgeting different versions of the same original.


Installation
------------

Installing from source:

    $ git clone git://github.com/vinc/dasort.git
    $ cd dasort
    $ sudo python setup.py install


Usage
-----

Importing pictures to a sorted tree is as simple as:

    $ dasort /media/disk ~/pictures
    Scanning '/media/disk' ...
    Examining 31348 files ...

     100% [==================================================================] 

     2884 of 31348 files imported
     27991 duplicated pictures ignored
     473 files ignored (listed in 'ignored.txt')

Thanks to the duplication detection algorithm, this command can be run from
multiple sources to the same destination.

Symbolic links can be used instead of copy with `dasort -s`.


Supported image formats
-----------------------

The following formats have been successfully tested: `JPEG`, `CR2`, `CRW`,
`TIFF`.

Proprietary RAW format from other brands than Canon have not been tested yet
but they should work too.

DaSort also recognises UFRaw ID files containing all the conversion parameters
so they will be also imported.
