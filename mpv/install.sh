#!/bin/sh
#
# Install mpv

# Check for mpv
if test ! $(which mpv)
then
  echo "  Installing mpv for you."
  brew tap mpv-player/mpv
  brew install --with-libbluray mpv > /tmp/mpv-install.log
fi
