#!/bin/bash

watsonCall(){
    today=$3
    from="$today $1:00"
    till="$today $2:00"
    test="add -f '$from' -t '$till' work"
    watson $test
}

today=0
yesterday=0
calcDate=$(date +"%Y-%m-%d")
while :; do
    case "$1" in
        -t) 
            today=1
            ;;
        -y) 
            yesterday=1
            current_date=$(date +"%Y-%m-%d")
            calcDate=$(date -d "$current_date - 1 days" +"%Y-%m-%d")
            ;;
        *)
            break
    esac
    shift
done

if [ $yesterday -eq 1 ]; then
    echo $calcDate
fi

if [ $today -eq 1 ]; then
    echo $calcDate
fi

watsonCall $1 $2 $calcDate
