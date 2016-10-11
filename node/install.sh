#!/bin/sh
#
# Install nvm and Node

# Check for Node
if test ! $(which nvm)
then
  printf "\n  Installing nvm for you.\n"
  brew install nvm > /tmp/nvm-install.log
fi

if test ! $(which node)
then
  printf "\n  Installing Node for you.\n"
  nvm install node > /tmp/node-install.log
fi
