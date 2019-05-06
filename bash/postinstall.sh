#!/usr/bin/env bash

BREW_PREFIX=$(brew --prefix)

if [[ ! fgrep -q "${BREW_PREFIX}/bin/bash" /etc/shells ]]; then
  echo "${BREW_PREFIX}/bin/bash" | sudo tee -a /etc/shells
  chsh -s "${BREW_PREFIX}/bin/bash"
fi
