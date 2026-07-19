#!/bin/bash
## take screenshots with scrot

# Source - https://stackoverflow.com/a/59839
# Posted by Grundlefleck, modified by community. See post 'Timeline' for change history
# Retrieved 2026-01-31, License - CC BY-SA 4.0

DIR=~/pictures/screenshots

if [ ! -d "$DIR" ]; then
    mkdir -p $DIR
fi

sleep 0.2; scrot -s -z -f ~/pictures/screenshots/%Y-%m-%d-%T-screenshot.png -e 'xclip -selection clipboard -target image/png -i $f'

