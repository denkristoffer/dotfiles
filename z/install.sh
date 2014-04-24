#!/bin/sh
#
# Install z

# Check for z
if test ! $(which z)
then
  echo "  Installing z for you."
  brew install z > /tmp/z-install.log
fi
