path_add() {
  if [ -d "$1" ] && [[ ":$PATH:" != *":$1:"* ]]; then
    export PATH="${PATH:+"$PATH:"}$1"
  fi
}

export FRESH_BIN_PATH="$HOME/.local/bin"
export FRESH_LOCAL="$HOME/denkristoffer/dotfiles"
export FRESH_LOCAL_SOURCE=denkristoffer/dotfiles
export LANG=da_DK.UTF-8
# 3 days, 60 * 60 * 24 * 3
export HOMEBREW_AUTO_UPDATE_SECS=259200

# Disable Next.js telemetry globally
export NEXT_TELEMETRY_DISABLED=1

path_add "$(brew --prefix rustup)/bin"
