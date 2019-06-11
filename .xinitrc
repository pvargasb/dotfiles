#! /bin/bash

[ -f "$HOME/.xprofile" ] && . ~/.xprofile

exec $WM
