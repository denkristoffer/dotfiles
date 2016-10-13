#!/bin/sh
#
# Set up zsh and oh-my-zsh

printf "\n› Setting up zsh\n"

sudo sh -c 'sudo echo "/usr/local/bin/zsh\n" >> /etc/shells'
chsh -s /usr/local/bin/zsh

# Install oh-my-zsh
curl -L http://install.ohmyz.sh | sh > /tmp/oh-my-zsh-install.log

# Copy kristoffer.zsh-theme to $HOME/.oh-my-zsh/themes/
cp "$(pwd)/zsh/kristoffer.zsh-theme" "$HOME/.oh-my-zsh/themes/kristoffer.zsh-theme"

# Copy all zsh files to $HOME/.oh-my-zsh/custom
# typeset -U config_files
config_files=($(pwd)/**/*.zsh)

for file in ${config_files}
do
  filename=$(basename "$file")
  cp $file $HOME/.oh-my-zsh/custom/$filename
done
