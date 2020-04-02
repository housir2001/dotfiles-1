#!/bin/bash


# videoId=$(cat test.json | jq '.items[0].id.videoId')
# videoTitle=$(cat test.json | jq '.items[0].snippet.title')
# videoUrl="https://www.youtube.com/watch?v=$videoId"

# echo ${videoUrl//\"/g}
# echo $videoTitle


# foo=$(cat test.json | jq '.items[] | {videoId: .id.videoId , title: .snippet.title}')
# echo $foo
# caching
# cat test.json | jq '.items[] | {videoId: .id.videoId , title: .snippet.title}| tostring' > resultToString
# 
# TODO collect chanelId 
# TODO curl all video links in to one file / or per user ?
# TODO for curl see testUrls file
list=""
while read -r line; do
    # get the title from json line
    meeehtitle="echo  $line | jq '.|.title' "
    videoTitle=$(eval $meeehtitle)

    # get the videoId from json line
    meeeh="echo  $line | jq '.|.videoId' "
    videoId=$(eval $meeeh)
    # concatinate wit TAB and save to list variable
    asdatest=`echo -e  $videoId '\t' $videoTitle`
    list="$list $asdatest \n"
# read the file resultToString
done < "resultToString"

selection=`printf "$list" | cut -f1,2 | rofi -dmenu -theme ~/dotfiles/i3/rofi.rasi ` 
streamLink="https://www.youtube.com/watch?v=${selection:2:11}"

# mpv $streamLink
