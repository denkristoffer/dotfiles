#!/bin/sh
#
# Install Homebrew Cask

# Check for Homebrew
printf "\n  Installing Homebrew Cask apps for you.\n"

# Install Cask apps
brew cask install \
    alfred \
    appcleaner \
    atom \
    bartender \
    beardedspice \
    caprine \
    controlplane \
    daisydisk \
    dropbox \
    flux \
    github-desktop \
    go2shell \
    google-chrome \
    hazel \
    imageoptim \
    iterm2 \
    kodi \
    little-snitch \
    musicbrainz-picard \
    openemu \
    openpht \
    paw \
    postgres \
    postico \
    scroll-reverser \
    selfcontrol \
    torbrowser \
    transmission \
    viscosity \
    xld > /tmp/cask-install.log
