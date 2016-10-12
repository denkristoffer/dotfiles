#!/bin/sh
#
# Install Node with nvm

if test ! $(which node)
then
  printf "\n› Installing Node\n"
  export NVM_DIR="$HOME/.nvm"
  [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" # This loads nvm
  nvm install node > /tmp/node-install.log
fi
