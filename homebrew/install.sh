#!/bin/sh
#
# Install Homebrew

if test ! $(which brew)
then
  printf "\n› Installing Homebrew\n"
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" 2>&1 </dev/null | sed "s/^/  /"

  printf "\n› brew update\n"
  brew update
fi

exit 0
