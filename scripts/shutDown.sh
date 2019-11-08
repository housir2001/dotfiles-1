#!/bin/bash


export DISPLAY=:0
export XAUTHORITY=/home/maren/.Xauthority
ARR=()
ARR+=("Shutdown")
ARR+=("Reboot")
ARR+=("Suspend")
ARR+=("Lock")
ARR+=("Exit")

CHOICE="$(printf '%s\n' "${ARR[@]}" | rofi -dmenu -config ~/dotfiles/i3/rofi.rasi -p " Power")"

if [ "$CHOICE" == "Shutdown" ]
then
    shutdown now
fi


if [ "$CHOICE" == "Suspend" ]
then
    bash /home/maren/dotfiles/i3/script/lock.sh 
    systemctl suspend
fi

if [ "$CHOICE" == "Lock" ]
then
    bash /home/maren/dotfiles/i3/script/lock.sh 
fi
if [ "$CHOICE" == "Exit" ]
then
    i3-msg exit
fi
if [ "$CHOICE" == "Reboot" ]
then
    reboot
fi
