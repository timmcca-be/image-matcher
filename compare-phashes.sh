#!/bin/bash

# play with this to tune how picky we are about matches.
# lower is more likely to miss matches, higher is more likely to get false positives.
threshold=25

file1=$1
file2=$2

while read -r line2; do
    IFS=',' read -ra values <<< "$line2"
    image2="${values[0]}"
    phash2="${values[1]}"
    while read -r line1; do
        IFS=',' read -ra values <<< "$line1"
        image1="${values[0]}"
        phash1="${values[1]}"
        metric=$(deps/phashcompare.sh "$phash1" "$phash2")
        if (( $(echo "$metric < $threshold" |bc -l) )); then
            echo "$image1,$image2,$metric"
        fi
    done <"$file1"
done <"$file2"
