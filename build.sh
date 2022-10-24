#!/bin/bash
set -e
for year in $(seq 2022 2031); do
    sed s/YEAR/$year/ template.svg | inkscape --pipe --export-plain-svg --export-text-to-path --export-filename=outputs/$year.svg
    inkscape --export-filename=outputs/$year.png outputs/$year.svg
done
