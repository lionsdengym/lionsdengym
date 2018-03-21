#!/bin/bash 

for i in *.jpg; do convert -thumbnail 200 $i thumbnails/$i; done
for i in *.jpg; do echo \<a href=\"img/tour/$(basename $i .jpg)_display.jpg\" data-gallery\>\<img src=\"img/tour/thumbnails/$i\" alt=\"$(basename $i .jpg)\" class=\"thumbs\"\>\</a\>; done
for i in *.jpg; do convert -resize 1200 -quality 80 $i $(basename $i .jpg)_display.jpg; done
