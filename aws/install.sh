#!/usr/bin/env bash

source "${0%/*}/../.internals/utils.bash"

main() {
  declare -r AWS_PATH="$HOME/.aws"
  echo "creating AWS directory"
  ensure_dir ${AWS_PATH}
  touch "$AWS_PATH/credentials"
}
main
