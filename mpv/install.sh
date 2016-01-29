#!/bin/sh
#
# Install mpv

# Check for mpv
if test ! $(which mpv)
then
  brew tap mpv-player/mpv
  brew install --with-libbluray mpv > /tmp/mpv-install.log
  printf "\n  Installing mpv for you.\n"
fi
