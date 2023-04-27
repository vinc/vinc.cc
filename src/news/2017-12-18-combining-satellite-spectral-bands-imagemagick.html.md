---
title: Combining satellite spectral bands with ImageMagick
date: 2017-12-18
tags: satellite, imagemagick
---

# Combining satellite spectral bands with ImageMagick

Some satellites capture images of the Earth at different spectral ranges or
bands at visible and infrared wavelengths. For a few of those satellites the
resulting imagery is available for anyone to use on [Amazon S3][1].

This article shows how to download and combine spectral bands to produce color
images with [ImageMagick][2].


## Landsat

[Landsat 8][3] provides medium resolution images of the Earth every day.  See
[AWS][4] for information the directory structure.

Note that the images obtained from combining different bands are underexposed
and need level adjustments.

```bash
d1="20170827"
d2="20170914"
aws="https://landsat-pds.s3.amazonaws.com"
url="$aws/c1/L8/203/026/LC08_L1TP_203026_${d1}_${d2}_01_T1"
crop="5330x3500+1210+2996"

mkdir tmp
export MAGICK_TMPDIR=tmp

for channel in B5 B4 B3 B2; do
  f="LC08_L1TP_203026_${d1}_${d2}_01_T1_$channel.TIF"
  wget "$url/$f"
  convert "$f" -crop "$crop" "$channel.tif"
done

convert B5.tif B4.tif B3.tif \
  -combine -level 6,32% \
  -resize "1000x1000" -unsharp 2x0.5+0.7+0 -quality 95 \
  landsat-irg.jpg

convert B4.tif B3.tif B2.tif \
  -combine -level 10,20% \
  -resize "1000x1000" -unsharp 2x0.5+0.7+0 -quality 95 \
  landsat-rgb.jpg
```

Red (680-630nm) / Green (600-525nm) / Blue (515-450nm)
![Landsat RGB](/images/landsat-rgb.jpg)

Infrared (885-845nm) / Red (680-630nm) / Green (600-525nm)
![Landsat IRG](/images/landsat-irg.jpg)


## Sentinel-2

The images from [Sentinel-2][5] are higher resolutions. Again see [AWS][6] for
a description of the directory structure.

```bash
d="2017/10/22"
url="http://sentinel-s2-l1c.s3.amazonaws.com/tiles/30/U/VV/$d/0"
crop="2500x2500+8480+8480"

mkdir tmp
export MAGICK_TMPDIR=tmp

for channel in B08 B04 B03 B02; do
  wget "$url/$channel.jp2"
done

convert "B08.jp2[$crop]" "B04.jp2[$crop]" "B03.jp2[$crop]" \
  -combine -level 0,18% \
  -resize "1000x1000" -unsharp 2x0.5+0.7+0 -quality 95 \
  sentinel-irg.jpg

convert "B04.jp2[$crop]" "B03.jp2[$crop]" "B02.jp2[$crop]" \
  -combine -level 1,12% \
  -resize "1000x1000" -unsharp 2x0.5+0.7+0 -quality 95 \
  sentinel-rgb.jpg
```

Red (665nm) / Green (560nm) / Blue (490nm)
![Sentinel-2 RGB](/images/sentinel-rgb.jpg)

Infrared (842nm) / Red (665nm) / Green (560nm)
![Sentinel-2 IRG](/images/sentinel-irg.jpg)


[1]: https://aws.amazon.com/earth/
[2]: http://www.imagemagick.org
[3]: https://en.wikipedia.org/wiki/Landsat_8
[4]: https://aws.amazon.com/public-datasets/landsat/
[5]: https://en.wikipedia.org/wiki/Sentinel-2
[6]: https://aws.amazon.com/public-datasets/sentinel-2/
