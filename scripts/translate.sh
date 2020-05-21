#!/usr/bin/env bash

input=$(rofi -dmenu -theme ~/dotfiles/i3/rofi.rasi)


while getopts de option
do
    case "${option}"
        in
        e) 
        qutebrowser "https://translate.google.com/?hl=en#view=home&op=translate&sl=de&tl=en&text=$input"
        ;;
        d)
        qutebrowser "https://translate.google.com/?hl=de#view=home&op=translate&sl=en&tl=de&text=$input"
        ;;
esac
done




