#!/bin/bash

if [ $1 == "play" ]; then
echo "play mpv"
    mpv --playlist=/tmp/playlist
    rm -f /tmp/playlist
fi 


if [ $1 == "push" ]; then
    echo $2 >> /tmp/playlist
fi 

