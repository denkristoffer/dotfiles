#!/usr/bin/env bash

DOTFILES_ROOT="$FRESH_LOCAL"
export DOTFILES_ROOT

set -e

cd $DOTFILES_ROOT

# These aren't currently in use
# user () {
#   printf "\r  [ \033[0;33m??\033[0m ] $1\n"
# }
#
# success () {
#   printf "\r\033[2K  [ \033[00;32mOK\033[0m ] $1\n"
# }
#
# info () {
#   printf "\r  [ \033[00;34m..\033[0m ] $1\n"
# }
#
# fail () {
#   printf "\r\033[2K  [\033[0;31mFAIL\033[0m] $1\n"
#   echo ''
#   exit
# }

# Install Homebrew first, as it's needed for almost everything else
"$DOTFILES_ROOT"/homebrew/install.sh

# Brewfile install
printf "\n› brew bundle\n"
sudo -K
brew bundle

# Find the installers and run them one at a time
find . -name install.sh | while read installer ; do sh -c "${installer}" ; done

# Run OS X system setup file last
printf "\n› macOS system setup\n"
"$DOTFILES_ROOT"/macos/system-setup.sh

printf "\n› Done\n"

cd -
