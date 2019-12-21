# Colors
autoload -U colors && colors

# Options
setopt appendhistory autocd extendedglob
unsetopt beep
bindkey -e

# Completion
autoload -Uz compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit

# Inlude hidden files in completion
_comp_options+=(globdots)

# Use vim keys in tab complete menu:
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -e

# Edit command
autoload -U edit-command-line
zle -N edit-command-line
bindkey '^X^e' edit-command-line

# History
HISTSIZE=1000
SAVEHIST=1000

# Variables
ZSH_CUSTOM=$HOME/.config/zsh
ZSH_CACHE_DIR=$HOME/.cache/zsh
HISTFILE=$ZSH_CACHE_DIR/.zsh_history
ZSH_THEME=$ZSH_CUSTOM/lambda

# Load theme
if [[ -f $ZSH_THEME ]]; then
    source $ZSH_THEME
fi

# Load aliases
if [[ -f $ZSH_CUSTOM/.aliases ]]; then
    source $ZSH_CUSTOM/.aliases
fi

# Make cache
if [[ ! -d $ZSH_CACHE_DIR ]]; then
  mkdir $ZSH_CACHE_DIR
fi

# Syntax highlighting
if [[ -f /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ]]; then
  . /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
fi

# Tmux
if command -v tmux &> /dev/null && [ -z "$TMUX" ] && [ $TERM != "dumb" ] && [ $DISPLAY ]; then
    tmux attach -t term || tmux new -s term && exit
fi

# Ssh agent
if [ $SSH_AGENT_PID ]; then
    ssh-add -l > /dev/null || ssh-add .ssh/github
fi
