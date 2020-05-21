#!/bin/bash

selection=`cat ~/dotfiles/scripts/data/applicationList | cut -d'|' -f1  | rofi -dmenu -theme ~/dotfiles/i3/rofi.rasi ` 
echo $selection

command=$(grep "$selection" ~/dotfiles/scripts/data/applicationList| head -n 1 | cut -d'|' -f2)
echo $command
eval $command

