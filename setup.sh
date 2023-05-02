#!/bin/bash

if ! convert -version > /dev/null 2> /dev/null; then
    echo "ImageMagick is not installed. Please install it and try again."
    exit 1
fi

mkdir -p deps

curl 'http://www.fmwconcepts.com/imagemagick/downloadcounter.php?scriptname=phashconvert&dirname=phashconvert' --output deps/phashconvert.sh
chmod +x deps/phashconvert.sh
curl 'http://www.fmwconcepts.com/imagemagick/downloadcounter.php?scriptname=phashcompare&dirname=phashcompare' --output deps/phashcompare.sh
chmod +x deps/phashcompare.sh
