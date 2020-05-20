#!/usr/bin/env bash

wallpaper=`ls -1 /home/maren/Downloads/wallpapers | rofi -dmenu -theme ~/dotfiles/i3/rofi.rasi ` 

while getopts ld option
do
  case "${option}"
    in

    l) 
      wal -l -i /home/maren/Downloads/wallpapers/$wallpaper 
    ;;
    d)
      wal -i /home/maren/Downloads/wallpapers/$wallpaper
    ;;
esac
done




