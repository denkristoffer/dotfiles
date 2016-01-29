#!/bin/sh
#
# Install Homebrew Cask

# DISABLED until Homebrew Cask's upcoming changes to move from linking to
# copying/moving are completed

# Check for Homebrew
printf "\n  Installing Homebrew Cask apps for you.\n"

# Install Cask apps
brew cask install \
alfred \
backblaze \
chitchat \
crashplan \
daisydisk \
dropbox \
flux \
google-chrome \
hazel \
iterm2 \
little-snitch \
openemu \
postgres \
postico \
seil \
sublime-text \
transmission \
viscosity \
xld
