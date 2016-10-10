#!/bin/sh
#
# Install flow

# Check for flow
if test ! $(which flow)
then
  printf "\n  Installing flow for you.\n"
  brew install flow > /tmp/flow-install.log
fi
