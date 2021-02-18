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


magick convert /home/maren/dotfiles/awesome/icons/display/mask-right.png  -alpha set  -channel RGBA \
  -fuzz 50%  -fill "$spacer1" -opaque black /home/maren/dotfiles/awesome/icons/display/1-l.png
magick convert /home/maren/dotfiles/awesome/icons/display/mask-left.png  -alpha set  -channel RGBA \
 -fuzz 50% -fill "$spacer1" -opaque white   /home/maren/dotfiles/awesome/icons/display/1-r.png


magick convert /home/maren/dotfiles/awesome/icons/display/mask-right.png  -alpha set  -channel RGBA \
-fuzz 50%    -fill "$spacer2" -opaque black /home/maren/dotfiles/awesome/icons/display/2-l.png
magick convert /home/maren/dotfiles/awesome/icons/display/mask-left.png  -alpha set  -channel RGBA \
 -fuzz 50% -fill "$spacer2" -opaque white   /home/maren/dotfiles/awesome/icons/display/2-r.png


magick convert /home/maren/dotfiles/awesome/icons/display/mask-right.png  -alpha set  -channel RGBA \
-fuzz 50% -fill "$spacer3" -opaque black /home/maren/dotfiles/awesome/icons/display/3-l.png
magick convert /home/maren/dotfiles/awesome/icons/display/mask-left.png  -alpha set  -channel RGBA \
 -fuzz 50% -fill "$spacer3" -opaque white   /home/maren/dotfiles/awesome/icons/display/3-r.png


magick convert /home/maren/dotfiles/awesome/icons/display/mask-right.png  -alpha set  -channel RGBA \
 -fuzz 50%   -fill "$spacer4" -opaque black /home/maren/dotfiles/awesome/icons/display/4-l.png
magick convert /home/maren/dotfiles/awesome/icons/display/mask-left.png  -alpha set  -channel RGBA \
 -fuzz 50% -fill "$spacer4" -opaque white   /home/maren/dotfiles/awesome/icons/display/4-r.png

magick convert /home/maren/dotfiles/awesome/icons/display/mask-right.png  -alpha set  -channel RGBA \
 -fuzz 50%   -fill "$spacer5" -opaque black /home/maren/dotfiles/awesome/icons/display/5-l.png
magick convert /home/maren/dotfiles/awesome/icons/display/mask-left.png  -alpha set  -channel RGBA \
 -fuzz 50% -fill "$spacer5" -opaque white   /home/maren/dotfiles/awesome/icons/display/5-r.png

magick convert /home/maren/dotfiles/awesome/icons/display/mask-right.png  -alpha set  -channel RGBA \
 -fuzz 50%   -fill "$spacer6" -opaque black /home/maren/dotfiles/awesome/icons/display/6-l.png
magick convert /home/maren/dotfiles/awesome/icons/display/mask-left.png  -alpha set  -channel RGBA \
 -fuzz 50% -fill "$spacer6" -opaque white   /home/maren/dotfiles/awesome/icons/display/6-r.png

magick convert /home/maren/dotfiles/awesome/icons/display/mask-right.png  -alpha set  -channel RGBA \
 -fuzz 50%   -fill "$spacer7" -opaque black /home/maren/dotfiles/awesome/icons/display/7-l.png
magick convert /home/maren/dotfiles/awesome/icons/display/mask-left.png  -alpha set  -channel RGBA \
 -fuzz 50% -fill "$spacer7" -opaque white   /home/maren/dotfiles/awesome/icons/display/7-r.png


echo 'awesome.restart()' | awesome-client
