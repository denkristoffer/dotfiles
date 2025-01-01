#!/bin/bash

sudo -K

if test ! $(which brew)
then
  printf "\n› Installing Homebrew\n"

  NOINTERACTIVE=1 /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)" </dev/null &> /tmp/homebrew-install.log
  eval "$($HOMEBREW_PREFIX/bin/brew shellenv)"
fi

brew analytics off

printf "\n› brew update\n"
brew update

exit 0
