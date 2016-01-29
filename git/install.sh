#!/bin/sh
#
# Install Git

if [[ "$(which git)" != '/usr/local/bin/git' ]]; then
  printf "\n  Installing Git for you.\n"
  brew install git > /tmp/git-install.log
fi
