#!/bin/sh

if test ! $(which fresh)
then
  printf "\n› Installing fresh\n"

  git clone https://github.com/freshshell/fresh ~/.fresh/source/freshshell/fresh
  echo "fresh freshshell/fresh bin/fresh --bin" >> ~/.freshrc
  ~/.fresh/source/freshshell/fresh/bin/fresh

  # Add `source ~/.fresh/build/shell.sh` to your shell config.
  source ~/.fresh/build/shell.sh
fi
