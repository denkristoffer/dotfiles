#!/bin/sh

if test ! $(which node)
then
  printf "\n› Installing Node\n"

  # Finish nvm setup
  mkdir $HOME/.nvm
  export NVM_DIR="$HOME/.nvm"
  . "$(brew --prefix nvm)/nvm.sh"

  nvm install node
fi
