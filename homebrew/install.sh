#!/bin/sh
#
# Install Homebrew and a few select packages

# Check for Homebrew
if test ! $(which brew)
then
  echo "  Installing Homebrew for you."
  ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"
fi

brew update | sed "s/^/  /"

exit 0
