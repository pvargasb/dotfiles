#
# ~/.bashrc
#
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#Prompt
PS1='\[$(tput bold)\]\[$(tput setaf 1)\][\[$(tput setaf 3)\]\u\[$(tput setaf 2)\]@\[$(tput setaf 4)\]\h \[$(tput setaf 5)\]\W\[$(tput setaf 1)\]]\[$(tput setaf 7)\]\\$ \[$(tput sgr0)\]'

#Set PATH
PATH=$PATH:~/.scripts

#Colors
alias vim='nvim'
alias diff='diff --color=auto'
alias grep='grep --color=auto'
alias ls='ls --color=auto'
alias ll='ls -l'
alias la='ls -a'
