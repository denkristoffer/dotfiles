#!/bin/sh

if test ! $(which fnm)
then
  printf "\n› Installing Node\n"

  # Finish fnm setup
  eval "$(fnm env --multi)"

  # Node v12
  fnm install lts/erbium
  fnm use lts/erbium

  touch ~/.fresh/build/completion/_fnm && fnm completions --shell zsh > ~/.fresh/build/completion/_fnm
fi
