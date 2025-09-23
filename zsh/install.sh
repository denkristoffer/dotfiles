#!/bin/sh
#
# Set up zsh

printf "\n› Setting up zsh\n"

if ! [[ $SHELL == "$HOMEBREW_PREFIX/bin/zsh" ]]
then
  sudo sh -c "sudo printf \"$HOMEBREW_PREFIX/bin/zsh\n\" >> /etc/shells"
  chsh -s $HOMEBREW_PREFIX/bin/zsh
fi
