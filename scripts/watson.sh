#!/bin/bash

watsonCall(){
    today=$3
    from="$today $1:00"
    till="$today $2:00"
    test="add -f '$from' -t '$till' work"

    watson add -f "$from" -t "$till" work
}

today=0
yesterday=0
calcDate=$(date +"%Y-%m-%d")
while :; do
    case "$1" in
        -s) 
            echo $(watson status) | sed -e "s/Project //g" -e "s/(.*)//g"
            ;;
        -l) 
            echo " $(watson log | head -n1)"
            ;;
        -t) 
            today=1
            watsonCall $1 $2 $calcDate
            ;;
        -y) 
            yesterday=1
            current_date=$(date +"%Y-%m-%d")
            calcDate=$(date -d "$current_date - 1 days" +"%Y-%m-%d")
            watsonCall $1 $2 $calcDate
            ;;

        *)
            break
    esac
    shift
done
