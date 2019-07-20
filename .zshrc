# Path to your oh-my-zsh installation.
export ZSH="${HOME}/dotfiles/oh-my-zsh"

ZSH_THEME="theunraveler"

ENABLE_CORRECTION="true"

COMPLETION_WAITING_DOTS="true"

DISABLE_UNTRACKED_FILES_DIRTY="true"

HIST_STAMPS="mm/dd/yyyy"

plugins=(git sudo)

source $ZSH/oh-my-zsh.sh

export LSCOLORS=FxExBxDxCxegedabagacad

alias cl="clear"
alias vi="vim"

export PATH="$PATH:/usr/local/bin/scripts:~/Library/Python/2.7/bin:~/.vimpkg/bin:$HOME/.asdf/bin:$HOME/.asdf/shims"

