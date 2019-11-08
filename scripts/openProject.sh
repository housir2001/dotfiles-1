#!/bin/zsh

FQSN=`ls -1 /home/maren/development | rofi -dmenu -theme ~/dotfiles/i3/rofi.rasi ` 
echo "export FQSN=$FQSN" > /home/maren/exportedVars 
echo $FQSN | xsel --clipboard --input

cd ~/development/$FQSN
vim
zsh

