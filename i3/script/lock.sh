#!/usr/bin/env bash

icon="/home/maren/Bilder/icon.png"
tmpbg='/home/maren/Bilder/lock.png'

(( $# )) && { icon=$1; }

#scrot "$tmpbg"
#convert "$tmpbg" -scale 10% -scale 1000% "$tmpbg"

#convert "$tmpbg" -filter Gaussian -blur 4x8 "$tmpbg"
#convert "$tmpbg" "$icon" -gravity center -composite -matte "$tmpbg"

i3lock -i $tmpbg
