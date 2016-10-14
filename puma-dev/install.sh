#!/bin/sh

printf "\n› Setting up puma-dev\n"
sudo -K
mkdir $HOME/Library/LaunchAgents # Shouldn't need this much longer: https://github.com/puma/puma-dev/pull/77
sudo puma-dev -setup

# Setup port 80 and 443 forwarding
puma-dev -install
