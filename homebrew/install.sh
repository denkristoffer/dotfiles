#!/bin/sh
#
# Install Homebrew

if test ! $(which brew)
then
  printf "\n› Installing Homebrew\n"

  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" &> /tmp/homebrew-install.log

  brew analytics off

  printf "\n› brew update\n"
  brew update
fi

exit 0
