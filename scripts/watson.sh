#!/bin/bash



watsonCall(){
today=$(date +"%Y-%m-%d")
from="$today $1:00"
till="$today $2:00"

blaa='watson add -f "'$from'" -t "'$till'" work'
echo $blaa
}


watsonCall $1 $2
