#!/bin/sh

######################################################################
# @author      : john (john@$HOSTNAME)
# @file        : info-camera-mic
# @created     : Dienstag Sep 10, 2024 15:12:56 CEST
#
# @description : 
######################################################################


if lsof /dev/video0 >/dev/null 2>&1; then
    camera="#1"
fi

if pacmd list-sources 2>&1 | grep -q RUNNING; then
    mic="#2"
fi

echo "$camera $mic"





