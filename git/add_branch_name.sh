#!/bin/sh
#
# Automatically adds branch name and branch description to every commit message.
#
NAME=$(git branch | grep '*' | sed 's/* //') 
DESCRIPTION=$(git config branch."$NAME".description)

echo $NAME
# if [ -n "$DESCRIPTION" ] 
# then
#    echo "" >> "$1"
#    echo $DESCRIPTION >> "$1"
# fi 
