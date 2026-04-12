#!/bin/bash

FOCUSED=$(i3-msg -t get_tree | jq -r 'recurse(.nodes[] + .floating_nodes[]) | select(.focused==true)')
LAYOUT=$(echo "$FOCUSED" | jq -r '.layout')
FLOATING=$(echo "$FOCUSED" | jq -r '.floating')

if [ "$FLOATING" == "user_on" ]; then
        echo "Floating"
    else
        case "$LAYOUT" in
            splith)  echo "Split Horizontal" ;;
            splitv)  echo "Split Vertical" ;;
            stacked) echo "Stacked" ;;
            tabbed)  echo "Tabbed" ;;
            *)       echo "Unknown" ;;
        esac
fi




