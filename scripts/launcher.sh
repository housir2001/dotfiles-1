#!/bin/bash

selection=`cat ~/dotfiles/scripts/data/applicationList | cut -d'|' -f1  | rofi -dmenu -theme ~/dotfiles/i3/rofi.rasi ` 
echo $selection

command=$(grep "$selection" ~/dotfiles/scripts/data/applicationList | cut -d'|' -f2)
echo $command
eval $command



# workplace Home|autorandr home
# workplace Work|autorandr work
# light|/home/maren/dotfiles/i3/script/themeswitcher.sh -l
# dark|/home/maren/dotfiles/i3/script/themeswitcher.sh -d
# fqsn|/home/maren/dotfiles/scripts/copyFqsn.sh
# queue|/home/maren/dotfiles/scripts/copyErrorQueue.sh
# stream|/home/maren/dotfiles/scripts/openStream.sh
# audio|pulseaudio -k ; sleep 2 ; pulseaudio &  killall pasystray ; pasystray &
