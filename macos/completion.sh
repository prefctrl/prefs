#!/usr/bin/env bash

soue

BREW_PREFIX=$(brew --prefix)



if type brew &>/dev/null; then
  for COMPLETION in ${BREW_PREFIX}/etc/bash_completion.d/*
  do
    [[ -f "${BREW_PREFIX}" ]] && source "${BREW_PREFIX}"
  done
  if [[ -f $(brew --prefix)/etc/profile.d/bash_completion.sh ]];
  then
    source "$(brew --prefix)/etc/profile.d/bash_completion.sh"
  fi
fi
