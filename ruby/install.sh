#!/bin/sh
#
# Install latest stable version of Ruby
printf "\n  Installing latest Ruby stable for you.\n"
ruby-install --latest --cleanup --no-reinstall ruby &> /tmp/ruby-install.log && rm -rf src
