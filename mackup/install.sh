#!/bin/sh
#
# Install Mackup

# Check for Mackup
if test ! $(which mackup)
then
  printf "\n  Installing Mackup for you.\n"
  brew install mackup > /tmp/mackup-install.log
  # mackup restore
fi
