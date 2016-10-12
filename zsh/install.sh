#!/bin/sh
#
# Set up zsh and oh-my-zsh

# Install oh-my-zsh
curl -L http://install.ohmyz.sh | sh > /tmp/oh-my-zsh-install.log

# Symlink kristoffer.zsh-theme to $HOME/.oh-my-zsh/themes/
ln -s $(pwd)/kristoffer.zsh-theme $HOME/.oh-my-zsh/themes/kristoffer.zsh-theme
