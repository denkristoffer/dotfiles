#!/bin/sh
#
# Install chruby and ruby-install

if ! [[ -e /usr/local/share/chruby ]]
then
  printf "\n  Installing chruby for you.\n"
  brew install chruby > /tmp/chruby-install.log
fi

if test ! $(which ruby-install)
then
  printf "\n  Installing ruby-install for you.\n"
  brew install ruby-install > /tmp/ruby-install-install.log
fi

# Install latest stable version of Ruby
printf "\n  Installing Ruby $VERSION for you.\n"
ruby-install --latest --cleanup --no-reinstall ruby $VERSION &> /tmp/ruby-install.log
