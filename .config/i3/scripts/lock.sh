#!/bin/bash

# ========================================================================
# config script for displaying i3 lock screen
# package i3lock-color (AUR) 
# ========================================================================

#i3lock --date-color=ffffffff --time-color=ffffffff -n -k --indicator --radius 120 --ring-width 15 -i "$lock_bg" -f -F
lock_bg=/home/john/.local/share/wallpapers/berser-sea-god.jpg

RING_COLOR='#ee00eeee'   # Primary color
KEYHL_COLOR='#00000000' # Highlight color
BSHL_COLOR='#ffffff22'  # Secondary color
SEPARATOR_COLOR='#ff00ffcc'
RINGVER_COLOR='#ee00eeee'
RINGWRONG_COLOR='#880000bb'

i3lock \
    -n \
    -k \
    --indicator \
    --date-color=ffffff \
    --date-str="%A, %m %Y" \
    --time-color=ffffff \
    --image=$lock_bg \
    --ring-color=880808 \
    --keyhl-color=$KEYHL_COLOR \
    --bshl-color=$BSHL_COLOR \
    --separator-color=$SEPARATOR_COLOR \
    --ringver-color=$RINGVER_COLOR \
    --ringwrong-color=$RINGWRONG_COLOR \
    --radius 120 \
    --ring-width 20 \
    -f \
    -e \
    -F

appearance="i3lock \
    --image=$lock_bg \
    --ring-color=$RING_COLOR \
    --keyhl-color=$KEYHL_COLOR \
    --bshl-color=$BSHL_COLOR \
    --separator-color=$SEPARATOR_COLOR \
    --ringver-color=$RINGVER_COLOR \
    --ringwrong-color=$RINGWRONG_COLOR"


#auto lock the screen
#xautolock -detectsleep -time 3 -locker \ $appearance 




