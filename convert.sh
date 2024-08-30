#!/bin/bash

## para usar el script se debe instalar, en fedora por ejemplo; sudo dnf install imagemagick
## luego de la instakción se usa el comando magick

for pdf in *.pdf; do
        output="${pdf%.pdf}.png"
        magick -density 300 "$pdf" -quality 100 "$output"
done

## para cambiar individualmente se puede aplicar de la siguiente manera:
## magick -density 300 'Nombre - del documento original.pdf' -quality 100 'Nombre - del documento de salida.png'

