#!/usr/bin/env bash

input=$(rofi -dmenu -theme ~/dotfiles/i3/rofi.rasi)


translation=$(trans $input)


echo $translation | rofi -dmenu -theme ~/dotfiles/i3/rofi.rasi
