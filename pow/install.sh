#!/bin/sh
#
# Install pow

    printf "\n  Installing pow for you.\n"
    brew install pow > /tmp/pow-install.log

# Create the required host directories:
mkdir -p ~/Library/Application\\ Support/Pow/Hosts
ln -s ~/Library/Application\\ Support/Pow/Hosts ~/.pow

# Setup port 80 forwarding and launchd agents:
sudo pow --install-system
pow --install-local

# Load launchd agents:
sudo launchctl load -w /Library/LaunchDaemons/cx.pow.firewall.plist
launchctl load -w ~/Library/LaunchAgents/cx.pow.powd.plist
