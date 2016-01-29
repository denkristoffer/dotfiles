#!/bin/sh
#
# Install Homebrew

# Check for Homebrew
if test ! $(which brew)
then
  printf "\n  Installing Homebrew for you.\n"
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" 2>&1 </dev/null | sed "s/^/  /"
fi

exit 0
