#!/bin/bash

input="/home/maren/.cache/wal/colors.yml"

wallpaper=$(cat ~/.cache/wal/wal | head -n1)
background=$(yq e '.special.background' ~/.cache/wal/colors.yml )
foreground=$(yq e '.special.foreground' ~/.cache/wal/colors.yml )


alpha=99

color0=$(yq e '.colors.color0' ~/.cache/wal/colors.yml  )$alpha
color1=$(yq e '.colors.color1' ~/.cache/wal/colors.yml  )$alpha
color2=$(yq e '.colors.color2' ~/.cache/wal/colors.yml  )$alpha
color3=$(yq e '.colors.color3' ~/.cache/wal/colors.yml  )$alpha
color4=$(yq e '.colors.color4' ~/.cache/wal/colors.yml  )$alpha
color5=$(yq e '.colors.color5' ~/.cache/wal/colors.yml  )$alpha
color6=$(yq e '.colors.color6' ~/.cache/wal/colors.yml  )$alpha
color7=$(yq e '.colors.color7' ~/.cache/wal/colors.yml  )$alpha
color8=$(yq e '.colors.color8' ~/.cache/wal/colors.yml  )$alpha
color9=$(yq e '.colors.color9' ~/.cache/wal/colors.yml  )$alpha
color10=$(yq e '.colors.color10' ~/.cache/wal/colors.yml  )$alpha
color11=$(yq e '.colors.color11' ~/.cache/wal/colors.yml  )$alpha
color12=$(yq e '.colors.color12' ~/.cache/wal/colors.yml  )$alpha
color13=$(yq e '.colors.color13' ~/.cache/wal/colors.yml  )$alpha
color14=$(yq e '.colors.color14' ~/.cache/wal/colors.yml  )$alpha
color15=$(yq e '.colors.color15' ~/.cache/wal/colors.yml  )$alpha

sed -e "s/BGCOLOR/$background/g" \
    -e "s/FGCOLOR/$foreground/g" \
    -e "s/COLOR1/$color1/g" \
    -e "s/COLOR2/$color2/g" \
    -e "s/COLOR3/$color3/g" \
    -e "s/COLOR4/$color4/g" \
    -e "s/COLOR5/$color5/g" \
    -e "s/COLOR6/$color6/g" \
    -e "s/COLOR7/$color7/g" \
    -e "s/COLOR8/$color8/g" \
    -e "s/COLOR9/$color9/g" \
    -e "s/COLOR10/$color10/g" \
    -e "s/COLOR11/$color11/g" \
    -e "s/COLOR12/$color12/g" \
    -e "s/COLOR13/$color13/g" \
    -e "s/COLOR14/$color14/g" \
    -e "s/COLOR15/$color15/g" \
    -e "s#WALLPAPER#$wallpaper#g" \
    /home/maren/dotfiles/rofi/colors-rofi-template.rasi > /home/maren/dotfiles/i3/rofi.rasi
