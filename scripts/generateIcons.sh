#!/bin/bash
path=/home/maren/dotfiles/awesome/icons/bar
echo $1
echo $2

# generate gradient
magick -size 100x100 -define gradient:angle=45 gradient:$1-$2 $path/../linear_gradient.png  
rm $path/*-icon*

for file in $path/*.png ; do 
    convert $file $path/../linear_gradient.png  $file -composite ${file/\.png/}-icon.png
done
