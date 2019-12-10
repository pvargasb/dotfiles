#!/bin/sh

# Export variables
export PATH="$PATH:~/.scripts"
export ZDOTDIR="$HOME/.config/zsh"
export EDITOR="nvim"
export TERMINAL="st"
export COMPOSITOR="picom"
export RESOURCES="htop"
export BROWSER="google-chrome-stable"
export MUSIC="spotify"
export READER="zathura"
export FILE="vifm"
export WM="i3"

# Start graphical server
if systemctl -q is-active graphical.target && [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
  exec startx
fi
