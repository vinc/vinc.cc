---
title: Compiling ImageMagick with JPEG 2000 on Ubuntu
date: 2017-12-19
tags: imagemagick, linux
---

# Compiling ImageMagick with JPEG 2000 on Ubuntu

In the previous post I published two scripts to [combine satellite spectral
bands with ImageMagick][1] but one of the script needs JPEG 2000 support to
open `*.jp2` images and that support has been [missing on Ubuntu][2] since
2015.

You can check if you have it by running `convert -version | grep jp2`.

The support is provided by a package called `openjpeg2` [which is not included
in main][3]. This issue should be resolved in future versions of Ubuntu but
at the moment we have to [recompile ImageMagick][4].

```bash
# development tools
sudo apt-get install build-essential

# required dependencies
sudo apt-get build-dep imagemagick

# openjpeg2
sudo apt-get install libopenjp2-7-dev

# imagemagick
wget ftp://ftp.imagemagick.org/pub/ImageMagick/ImageMagick.tar.gz
tar xvfz ImageMagick.tar.gz
cd ImageMagick-*
./configure --disable-shared
make
sudo make install
```

[1]: /blog/2017/12/18/combining-satellite-spectral-bands-imagemagick/
[2]: https://bugs.launchpad.net/ubuntu/+source/imagemagick/+bug/1447968
[3]: https://bugs.launchpad.net/ubuntu/+source/openjpeg2/+bug/711061
[4]: https://serverfault.com/questions/149682/install-imagemagick-with-jpeg-support-from-ubuntu-packages/202737#202737
