#!/bin/bash

input="/home/maren/.cache/wal/colors.yml"

wallpaper=$(cat ~/.cache/wal/wal | head -n1)
background=$(yq r ~/.cache/wal/colors.yml special.background )
foreground=$(yq r ~/.cache/wal/colors.yml special.foreground )

alpha=99

color0=$(yq r ~/.cache/wal/colors.yml colors.color0 )$alpha
color1=$(yq r ~/.cache/wal/colors.yml colors.color1 )$alpha
color2=$(yq r ~/.cache/wal/colors.yml colors.color2 )$alpha
color3=$(yq r ~/.cache/wal/colors.yml colors.color3 )$alpha
color4=$(yq r ~/.cache/wal/colors.yml colors.color4 )$alpha
color5=$(yq r ~/.cache/wal/colors.yml colors.color5 )$alpha
color6=$(yq r ~/.cache/wal/colors.yml colors.color6 )$alpha
color7=$(yq r ~/.cache/wal/colors.yml colors.color7 )$alpha
color8=$(yq r ~/.cache/wal/colors.yml colors.color8 )$alpha
color9=$(yq r ~/.cache/wal/colors.yml colors.color9 )$alpha
color10=$(yq r ~/.cache/wal/colors.yml colors.color10 )$alpha
color11=$(yq r ~/.cache/wal/colors.yml colors.color11 )$alpha
color12=$(yq r ~/.cache/wal/colors.yml colors.color12 )$alpha
color13=$(yq r ~/.cache/wal/colors.yml colors.color13 )$alpha
color14=$(yq r ~/.cache/wal/colors.yml colors.color14 )$alpha
color15=$(yq r ~/.cache/wal/colors.yml colors.color15 )$alpha

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
    /home/maren/dotfiles/awesome/theme.template.lua > /home/maren/dotfiles/awesome/theme.lua
 
spacer1=$color1.$alpha
spacer2=$color2.$alpha
spacer3=$color3.$alpha
spacer4=$color4.$alpha
spacer5=$color5.$alpha
spacer6=$color6.$alpha
spacer7=$color7.$alpha
spacer8=$color8.$alpha

#magick -size 50x50 -colorspace RGB -define gradient:angle=90 gradient:#00000000-$spacer1 /home/maren/dotfiles/awesome/icons/display/1.png
#magick -size 50x50 -colorspace RGB -define gradient:angle=90 gradient:$spacer1-$spacer2 /home/maren/dotfiles/awesome/icons/display/2.png
#magick -size 50x50 -colorspace RGB -define gradient:angle=90 gradient:$spacer2-$spacer3 /home/maren/dotfiles/awesome/icons/display/3.png
#magick -size 50x50 -colorspace RGB -define gradient:angle=90 gradient:$spacer3-$spacer4 /home/maren/dotfiles/awesome/icons/display/4.png
#magick -size 50x50 -colorspace RGB -define gradient:angle=90 gradient:$spacer4-$spacer5 /home/maren/dotfiles/awesome/icons/display/5.png
#magick -size 50x50 -colorspace RGB -define gradient:angle=90 gradient:$spacer4-#00000000 /home/maren/dotfiles/awesome/icons/display/6.png

magick convert -size 100x100 xc:transparent  \
    -draw "fill #00000000 path 'M 0,0 L 0,100 L 100,100 Z' " \
    -draw "fill $spacer1 path 'M 0,0 L 100,0 L 100,100 Z' " /home/maren/dotfiles/awesome/icons/display/1.png
magick convert -size 100x100 xc:transparent  \
    -draw "fill $spacer1 path 'M 0,0 L 0,100 L 100,100 Z' " \
    -draw "fill $spacer2 path 'M 0,0 L 100,0 L 100,100 Z' " /home/maren/dotfiles/awesome/icons/display/2.png
magick convert -size 100x100 xc:transparent  \
    -draw "fill $spacer2 path 'M 0,0 L 0,100 L 100,100 Z' " \
    -draw "fill $spacer3 path 'M 0,0 L 100,0 L 100,100 Z' " /home/maren/dotfiles/awesome/icons/display/3.png
magick convert -size 100x100 xc:transparent  \
    -draw "fill $spacer3 path 'M 0,0 L 0,100 L 100,100 Z' " \
    -draw "fill $spacer4 path 'M 0,0 L 100,0 L 100,100 Z' " /home/maren/dotfiles/awesome/icons/display/4.png
magick convert -size 100x100 xc:transparent  \
    -draw "fill $spacer4 path 'M 0,0 L 0,100 L 100,100 Z' " \
    -draw "fill $spacer5 path 'M 0,0 L 100,0 L 100,100 Z' " /home/maren/dotfiles/awesome/icons/display/5.png
magick convert -size 100x100 xc:transparent  \
    -draw "fill $spacer5 path 'M 0,0 L 0,100 L 100,100 Z' " \
    -draw "fill #00000000 path 'M 0,0 L 100,0 L 100,100 Z' " /home/maren/dotfiles/awesome/icons/display/6.png

magick convert -size 100x100 xc:transparent  \
    -draw "fill $spacer6 path 'M 0,0 L 0,100 L 100,100 Z' " \
    -draw "fill #00000000 path 'M 0,0 L 100,0 L 100,100 Z' " /home/maren/dotfiles/awesome/icons/display/7.png

echo 'awesome.restart()' | awesome-client
