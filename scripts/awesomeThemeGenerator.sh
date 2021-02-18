#!/bin/bash

alpha=22

colors=$(yq e '.colors' ~/.cache/wal/colors.yml)
currentColor=#00000000
i=0
cp /home/maren/dotfiles/awesome/theme.template.lua /tmp/theme.lua
while IFS= read -r line ; do 

    line=$(echo $line | tr a-z A-Z)
    line=${line//:/}
    line=${line//\"/}
    color=$(echo $line | cut -f1 -d" ")
    hex=$(echo $line | cut -f2 -d" ")

sed -i "s/$color/$hex$alpha/g" /tmp/theme.lua

magick convert /home/maren/dotfiles/awesome/icons/display/mask-right.png  -alpha set  -channel RGBA \
  -fuzz 50%  -fill "$hex$alpha" -opaque black /home/maren/dotfiles/awesome/icons/display/$i-l.png
magick convert /home/maren/dotfiles/awesome/icons/display/mask-left.png  -alpha set  -channel RGBA \
 -fuzz 50% -fill "$hex$alpha" -opaque white   /home/maren/dotfiles/awesome/icons/display/$i-r.png

currentColor=$hex
((i++))

done <<< "$colors"

background=$(yq e '.special.background' ~/.cache/wal/colors.yml )
foreground=$(yq e '.special.foreground' ~/.cache/wal/colors.yml )
sed -i "s/BGCOLOR/$background/g" /tmp/theme.lua
sed -i "s/FGCOLOR/$foreground/g" /tmp/theme.lua

mv /tmp/theme.lua /home/maren/dotfiles/awesome/theme.lua


#echo 'awesome.restart()' | awesome-client
