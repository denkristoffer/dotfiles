#!/bin/sh

printf "\n› Installing latest Ruby stable with bundler\n"
ruby-install --latest --cleanup --no-reinstall ruby &> /tmp/ruby-install.log && rm -rf $HOME/src

. /usr/local/opt/chruby/share/chruby/chruby.sh

chruby ruby

gem install bundler
