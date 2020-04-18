#!/bin/bash

# environment variables
export VISUAL=vim
export EDITOR=vim
export TERM=xterm-256color
export FZF_DEFAULT_COMMAND="find ."

# colors
_reset_="\[\e[m\]"
_black_="\[\e[30m\]"
_red_="\[\e[31m\]"
_green_="\[\e[32m\]"
_yellow_="\[\e[33m\]"
_purple_="\[\e[34m\]"
_pink_="\[\e[35m\]"
_cyan_="\[\e[36m\]"
_white_="\[\e[37m\]"
_BLACK_="\[\e[1;30m\]"
_RED_="\[\e[1;31m\]"
_GREEN_="\[\e[1;32m\]"
_YELLOW_="\[\e[1;33m\]"
_PURPLE_="\[\e[1;34m\]"
_PINK_="\[\e[1;35m\]"
_CYAN_="\[\e[1;36m\]"
_WHITE_="\[\e[1;37m\]"

# prompt
force_color_prompt=yes
PS1="$_GREEN_\u@\h $_PURPLE_\w$_reset_$ "

# ls alias stuffs
alias ls='ls --color'
alias ll='ls -lh --group-directories-first'
alias la='ll -A'

# venv stuffs
export VENV="$HOME/.virtualenvs"
mkdir -p "$VENV"
mkvenv () {
    python3 -m venv "$VENV/$1"
}
workon () {
    source "$VENV/$1/bin/activate"
}
