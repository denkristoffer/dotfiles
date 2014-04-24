#!/bin/sh
#
# Install Node

# Check for Node
if test ! $(which node)
then
  echo "  Installing Node for you."
  brew install node > /tmp/node-install.log
fi
