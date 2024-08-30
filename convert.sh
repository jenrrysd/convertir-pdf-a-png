#!/bin/bash

for pdf in *.pdf; do
        output="${pdf%.pdf}.png"
        magick -density 300 "$pdf" -quality 100 "$output"
done



