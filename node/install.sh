#!/bin/sh

if test ! $(which nvm)
then
  printf "\n› Installing Node\n"

  # Finish nvm setup
  mkdir $HOME/.nvm
  export NVM_DIR="$HOME/.nvm"
  . "$(brew --prefix nvm)/nvm.sh"

  nvm install --lts
fi
