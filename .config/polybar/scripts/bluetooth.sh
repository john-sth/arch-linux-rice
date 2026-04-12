#!/bin/sh
device_name=$(bluetoothctl devices | cut -f2 -d' ' | while read uuid; do bluetoothctl info $uuid; done|grep -e "Name" | sed 's/Name://g')
if [ $(bluetoothctl show | grep "Powered: yes" | wc -c) -eq 0 ]
then
  echo "%{F#66ffffff}"
else
  if [ $(echo info | bluetoothctl | grep 'Device' | wc -c) -eq 0 ]
  then 
    echo ""  
  fi
  echo "%{F#2193ff}"$device_name
fi



