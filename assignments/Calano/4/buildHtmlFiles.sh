#!/bin/bash
while IFS= read -r url
do
    # echo "$url"
    cp "frame-template.html" "framable/$url.html"
    sed -i "s/_xxx_/$url/g" "framable/$url.html"
done < $1