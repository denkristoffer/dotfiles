#!/bin/sh
#
# Install Git

if [ "$(which git)" != '/usr/local/bin/git' ]; then
  echo "  Installing Git for you."
  brew install git > /tmp/git-install.log
fi
