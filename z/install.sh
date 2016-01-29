#!/bin/sh
#
# Install z

# Check for z
if test ! $(which z)
then
  printf "\n  Installing z for you.\n"
  brew install z > /tmp/z-install.log
fi
