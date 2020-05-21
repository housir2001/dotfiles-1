#!/bin/bash

input="/home/maren/.cache/wal/colors"
i=0
content=""
while IFS= read -r line
do

    if [ $i -eq 0 ]; then 
        content="${content}  background:${line}00;"
        content="${content}  color$i:${line};"
    else 
        content="${content}  color$i:${line};"
    fi

    ((i++))

done < "$input"

cp /home/maren/dotfiles/rofi/colors-rofi-template.rasi /home/maren/dotfiles/i3/rofi.rasi

sed -i "10i$content" /home/maren/dotfiles/i3/rofi.rasi


