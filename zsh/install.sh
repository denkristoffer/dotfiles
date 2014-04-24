#!/bin/sh
#
# Install zsh and oh-my-zsh

# Check for zsh
if test ! $(which zsh)
then
  echo "  Installing zsh for you."
  brew install zsh > /tmp/zsh-install.log
fi

# Install oh-my-zsh
curl -L http://install.ohmyz.sh | sh > /tmp/oh-my-zsh-install.log

# Symlink kristoffer.zsh-theme to $HOME/.oh-my-zsh/themes/
link_files kristoffer.zsh-theme $HOME/.oh-my-zsh/themes/kristoffer.zsh-theme
