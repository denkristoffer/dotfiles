#!/bin/sh
#
# Install Node with nvm

if test ! $(which node)
then
  printf "\n› Installing Node\n"
  nvm install node > /tmp/node-install.log
fi
