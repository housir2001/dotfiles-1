#!/bin/bash
emoticon=$(cat "$HOME/dotfiles/scripts/data/empty" "$HOME/dotfiles/scripts/data/emoticonsSlack" | rofi -dmenu -theme ~/dotfiles/i3/rofi.rasi)
echo $emoticon | xsel --clipboard --input
