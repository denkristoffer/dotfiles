#!/bin/sh

if test ! $(which fresh)
then
  printf "\n› Installing fresh\n"

  /bin/bash -c "`curl -sL https://get.freshshell.com`" </dev/null &> /tmp/fresh-install.log

  # Add `source ~/.fresh/build/shell.sh` to your shell config.
  source ~/.fresh/build/shell.sh
fi
