#!/bin/sh

if test ! $(which fnm)
then
  printf "\n› Installing Node\n"

  # Finish fnm setup
  eval "$(fnm env)"

  # Node LTS
  fnm install lts-latest
  fnm use lts-latest

  # Package managers
  corepack enable
  corepack prepare --activate yarn@1.22.15

  fnm completions --shell zsh > ~/.fresh/build/completion/_fnm
fi
