#!/bin/sh
#
# Install latest stable version of Ruby
printf "\n› Installing latest Ruby stable\n"
ruby-install --latest --cleanup --no-reinstall ruby &> /tmp/ruby-install.log && rm -rf $HOME/src
