#!/bin/bash
xautolock -notify 30 -notifier "notify-send -u critical -t 10000 'LOCKING in 30s'" -time 15 -locker "systemctl suspend" 
