#!/bin/sh
#
# Set up fresh and use it to install the dotfiles

printf "\n› Setting up fresh shell\n"

ln -s "$DOTFILES_ROOT/fresh/freshrc" "$HOME/.freshrc"
FRESH_LOCAL_SOURCE=denkristoffer/dotfiles /bin/bash -c "`curl -sL https://get.freshshell.com`" </dev/null &> /tmp/fresh-install.log