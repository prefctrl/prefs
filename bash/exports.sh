#!/usr/bin/env bash

declare -rx DOTFILES="$HOME/.dotfiles"

declare -rx HISTSIZE='32768'
declare -rx EN='en_US.UTF-8'

# environment variables with credentials are kept in a .env file
if [[ -a $HOME/.env ]]; then
  # shellcheck source=/dev/null
  source "$HOME/.env"
fi

declare -rx EDITOR="nvim"
declare -rx HISTSIZE="${HISTSIZE}"
declare -rx HISTFILESIZE="${HISTSIZE}"
declare -rx HISTCONTROL='ignoreboth'
declare -rx LANG="${EN}"
declare -rx LC_ALL="${EN}"
declare -rx LESS_TERMCAP_md="${yellow}"
declare -rx MANPAGER="less -X"

GOG_TTY=$(tty)
export GOG_TTY
