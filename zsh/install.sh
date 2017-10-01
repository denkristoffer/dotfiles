#!/bin/sh
#
# Set up zsh and oh-my-zsh

printf "\n› Setting up zsh\n"

sudo sh -c "sudo printf \"/usr/local/bin/zsh\n\" >> /etc/shells"
chsh -s /usr/local/bin/zsh

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)" | sh > /tmp/oh-my-zsh-install.log

# Copy kristoffer.zsh-theme to $HOME/.oh-my-zsh/themes/
cp "$DOTFILES_ROOT/zsh/kristoffer.zsh-theme" "$HOME/.oh-my-zsh/themes/"

# Copy all zsh files to $HOME/.oh-my-zsh/custom
config_files=($(dirname "$(pwd)")/**/*.zsh)
# echo $config_files

for file in ${config_files}
do
  filename=$(basename "$file")
  echo $filename
  # cp $file $HOME/.oh-my-zsh/custom/
done
