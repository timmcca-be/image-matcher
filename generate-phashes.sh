#!/bin/bash

find -E "$1" -type f -iregex '.*\.(jpg|jpeg|webp)' -exec bash -c 'echo "$1,$(deps/phashconvert.sh "$1")"' -- {} \;
