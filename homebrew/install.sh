#!/bin/sh
#
# Install Homebrew

# Check for Homebrew
if test ! $(which brew)
then
  echo "  Installing Homebrew for you."
  ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)" 2>&1 | sed -ne "s/^/  /"

  exit 0
fi

echo "  Homebrew is already installed. Updating it: "
brew update | sed "s/^/  /"
