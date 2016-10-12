#!/bin/sh
#
# Install mpv

if test ! $(which mpv)
then
  printf "\n  Installing mpv for you.\n"
  brew install --with-bundle --with-libbluray mpv > /tmp/mpv-install.log
  brew linkapps mpv
fi
