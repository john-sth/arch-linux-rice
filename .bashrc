#
# ~/.bashrc
#
if [[ ${START_X11} == 1 ]]; then
    unset START_X11
    exec startx
fi


## Search for .bash_aliases

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi
 

# If not running interactively, don't do anything
[[ $- != *i* ]] && return


#wal -qni /home/john/.config/i3/skeleton2.png
#cat ~/.cache/wal/sequences &


