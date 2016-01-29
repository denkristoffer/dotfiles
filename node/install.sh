#!/bin/sh
#
# Install Node

# Check for Node
if test ! $(which node)
then
  printf "\n  Installing Node for you.\n"
  brew install node > /tmp/node-install.log
fi
