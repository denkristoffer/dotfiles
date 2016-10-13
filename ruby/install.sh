#!/bin/sh
#
# Install latest stable version of Ruby
printf "\n› Installing latest Ruby stable with bundler\n"
. /usr/local/opt/chruby/share/chruby/chruby.sh
ruby-install --latest --cleanup --no-reinstall ruby &> /tmp/ruby-install.log && rm -rf $HOME/src
# gem install bundler
