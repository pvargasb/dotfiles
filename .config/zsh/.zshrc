# Path to your oh-my-zsh installation.
ZSH=/usr/share/oh-my-zsh/

ZSH_THEME="mylambda"

# Case-sensitive completion.
CASE_SENSITIVE="true"

# Disable bi-weekly auto-update checks.
DISABLE_AUTO_UPDATE="true"

# Auto-correction.
ENABLE_CORRECTION="true"

# This makes repository status check for large repositories
# much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

# Custom folder
ZSH_CUSTOM=~/.config/zsh

# Set PATH
PATH=$PATH:~/.scripts

# Aliases
alias vim='nvim'
alias zshconfig="vim ~/.zshrc"

ZSH_CACHE_DIR=$HOME/.cache/oh-my-zsh
if [[ ! -d $ZSH_CACHE_DIR ]]; then
  mkdir $ZSH_CACHE_DIR
fi

source $ZSH/oh-my-zsh.sh
