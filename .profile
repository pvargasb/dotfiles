#!/bin/sh

# Export variables
export PATH="$PATH:~/.scripts"
export EDITOR="nvim"
export TERMINAL="st"
export BROWSER="google-chrome-stable"
export MUSIC="spotify"
export READER="zathura"
export FILE="vifm"

# Start graphical server if i3 not already running.
[ "$(tty)" = "/dev/tty1" ] && ! pgrep -x i3 >/dev/null && exec startx
