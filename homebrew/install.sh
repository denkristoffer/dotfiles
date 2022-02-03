#!/bin/bash

sudo -K

if test ! $(which brew)
then
  printf "\n› Installing Homebrew\n"

  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)" </dev/null &> /tmp/homebrew-install.log
fi

brew analytics off

printf "\n› brew update\n"
brew update

exit 0
