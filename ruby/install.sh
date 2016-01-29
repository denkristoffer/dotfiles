#!/bin/sh
#
# Install Chruby and ruby-install

if test ! $(which chruby)
then
  printf "\n  Installing chruby for you.\n"
  brew install chruby > /tmp/chruby-install.log
fi

if test ! $(which ruby-install)
then
  printf "\n  Installing ruby-install for you.\n"
  brew install ruby-install > /tmp/ruby-install-install.log
fi
