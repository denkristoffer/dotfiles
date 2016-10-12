#!/bin/sh
#
# Install Node with nvm

if test ! $(which node)
then
  printf "\n› Installing Node\n"

  # Finish nvm setup
  mkdir $HOME/.nvm
  export NVM_DIR="$HOME/.nvm"
  . "$(brew --prefix nvm)/nvm.sh"
  
  nvm install node > /tmp/node-install.log
fi
