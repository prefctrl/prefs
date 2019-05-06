#!/usr/bin/env bash

# NVM directory
declare -rx NVM_DIR="$HOME/.nvm"

# Node REPL environment variables
declare -x NODE_REPL_HISTORY="$HOME/.node_repl_history"
declare -x NODE_REPL_HISTORY_SIZE="${HISTSIZE}"
declare -x NODE_REPL_MODE="sloppy"
