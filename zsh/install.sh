#!/bin/sh
#
# Set up zsh and oh-my-zsh

printf "\n› Setting up zsh\n"
# Install oh-my-zsh
curl -L http://install.ohmyz.sh | sh > /tmp/oh-my-zsh-install.log

# Symlink kristoffer.zsh-theme to $HOME/.oh-my-zsh/themes/
ln -s $(pwd)/kristoffer.zsh-theme $HOME/.oh-my-zsh/themes/kristoffer.zsh-theme

# Symlink all zsh files to $HOME/.oh-my-zsh/custom
typeset -U config_files
config_files=($(pwd)/../**/*.zsh)

for file in ${config_files}
do
  filename=$(basename "$file")
  ln -s $file $HOME/.oh-my-zsh/custom/$filename
done
