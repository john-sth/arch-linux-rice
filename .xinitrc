#!/bin/sh

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

# map AltGr to mod3 variable
#xmodmap -e 'keycode 108 = Hyper_R'
#xmodmap -e 'add mod3 = Hyper_R'

# merge in defaults and keymaps

if [ -f $sysresources ]; then
    xrdb -merge $sysresources
fi

if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi

if [ -f "$userresources" ]; then
    xrdb -merge "$userresources"
fi

if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi

# start some nice programs

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

twm &
unclutter &
dunst &

## ================================================================================
## dwm 
## ================================================================================
#slstatus &
#xwallpaper --stretch /home/john/.local/share/wallpapers/picture22.jpg
#xcompmgr -c &

#while true; do 
#	dwm 2> ~/.local/share/.dwm.log
#done

## ================================================================================
## i3
## ================================================================================
(sleep 2; /home/john/.config/polybar/launch.sh) & 
exec i3



## ================================================================================
## xfce
## ================================================================================
#exec startxfce4

export PATH="$HOME/.local/bin:$PATH"
xrdb merge $HOME/Xresources

