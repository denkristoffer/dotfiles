#!/bin/sh
#
# Install zsh and oh-my-zsh

# Check for zsh
if test ! $(which zsh)
then
  printf "\n  Installing zsh for you.\n"
  brew install zsh > /tmp/zsh-install.log
fi

# Install oh-my-zsh
curl -L http://install.ohmyz.sh | sh > /tmp/oh-my-zsh-install.log

# Symlink kristoffer.zsh-theme to $HOME/.oh-my-zsh/themes/
ln -s $(pwd)/kristoffer.zsh-theme $HOME/.oh-my-zsh/themes/kristoffer.zsh-theme
