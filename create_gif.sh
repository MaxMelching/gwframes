#!/bin/bash

mkdir -p temp/

for pdf in examples/*.pdf; do
    name=$(basename "$pdf" .pdf)
    magick -density 420 "$pdf" -background white -alpha remove -alpha off "temp/${name}.png"
done

frames=$(ls temp/*.png | sort -V)

# Find maximum dimensions across all frames
max_w=0
max_h=0
for f in $frames; do
    w=$(magick identify -format "%w" "$f")
    h=$(magick identify -format "%h" "$f")
    (( w > max_w )) && max_w=$w
    (( h > max_h )) && max_h=$h
done

# Center each frame on a white canvas of max dimensions
for f in $frames; do
    magick "$f" -background white -gravity Center -extent "${max_w}x${max_h}" "$f"
done

magick -delay 60 -loop 0 -dispose Background $frames gwframes.gif

rm -rf temp/
