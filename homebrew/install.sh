#!/bin/sh
#
# Install Homebrew

if test ! $(which brew)
then
  printf "\n› Installing Homebrew\n"

  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" </dev/null &> /tmp/homebrew-install.log
fi

brew analytics off

printf "\n› brew update\n"
brew update

exit 0
