#!/bin/sh
#
# Install pow

if test ! $(which puma-dev)
then
    printf "\n  Installing puma-dev for you.\n"
    brew install puma/puma/puma-dev > /tmp/puma-dev-install.log
    sudo puma-dev -setup

    # Setup port 80 and 443 forwarding
    puma-dev -install
fi
