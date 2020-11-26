#!/bin/bash

sed -e "s/STORYID/$1/g" /home/maren/dotfiles/vim/template/jiraSubtask.yml > /tmp/Subtask.yml 
jira subtask $1 -t /tmp/Subtask.yml  


