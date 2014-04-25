#!/bin/sh
#
# Install Homebrew

# Check for Homebrew
if test ! $(which brew)
then
  echo "  Installing Homebrew for you."
  ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)" 2>&1 | sed -ne "s/^/  /"
fi
