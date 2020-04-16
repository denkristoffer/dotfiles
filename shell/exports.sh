path_add() {
  if [ -d "$1" ] && [[ ":$PATH:" != *":$1:"* ]]; then
    export PATH="${PATH:+"$PATH:"}$1"
  fi
}

export FRESH_BIN_PATH=/usr/local/bin
export FRESH_LOCAL="$HOME/denkristoffer/dotfiles"
export FRESH_LOCAL_SOURCE=denkristoffer/dotfiles
export LANG=da_DK.UTF-8

path_add "/usr/local/sbin"
