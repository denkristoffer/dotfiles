#!/bin/sh

printf "\n› Setting up puma-dev\n"
sudo puma-dev -setup

# Setup port 80 and 443 forwarding
puma-dev -install
