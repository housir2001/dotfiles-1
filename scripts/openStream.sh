#!/bin/bash
selection=`cat ~/dotfiles/scripts/data/linkList | cut -d' ' -f1  | rofi -dmenu -theme ~/dotfiles/i3/rofi.rasi ` 
echo $selection

streamLink=$(grep $selection ~/dotfiles/scripts/data/linkList | cut -d' ' -f2)
mpv $streamLink &
