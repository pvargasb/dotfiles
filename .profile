#!/bin/sh

export PATH="$PATH:$HOME/.local/bin"

# Default programs
export WM="i3"
export BROWSER="brave"
export EDITOR="nvim"
export TERMINAL="st"
export COMPOSITOR="picom"
export RESOURCES="htop"
export MUSIC="spotify"
export READER="zathura"
export FILE="lf"

# Clean
export ZDOTDIR="$HOME/.config/zsh"
export LESSHISTFILE="-"
export GTK2_RC_FILES="$HOME/.config/gtk-2.0/gtkrc-2.0"

# Start graphical server
if command -v ssh &> /dev/null && systemctl -q is-active graphical.target && [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
  exec ssh-agent startx
fi
