# dotfiles

Dotfiles to set up a macOS installation to my liking.

Based on/stolen from:

- https://github.com/freshshell/fresh
- https://github.com/holman/dotfiles
- https://github.com/mathiasbynens/dotfiles

## Installation

- Sign in to the App Store manually
- Run `git` command to prompt for installing developer tools
- Create `$HOME/.local/bin` and allow access for your user: `mkdir -p $HOME/.local/bin`
- `` FRESH_BIN_PATH=$HOME/.local/bin FRESH_LOCAL="$HOME/denkristoffer/dotfiles" FRESH_LOCAL_SOURCE=denkristoffer/dotfiles /bin/bash -c "`curl -sL https://get.freshshell.com`" ``

### Manual steps

The system still requires some manual setup after running.

Set name and email with the following local git config:

- `git config -f ~/.gitconfig.local user.name "John Appleseed"`
- `git config -f ~/.gitconfig.local user.email me@users.noreply.github.com`

Move GPG keys into MacGPG and get the signing key with `gpg --list-secret-keys --keyid-format=long`

- `git config -f ~/.gitconfig.local user.signingkey 3AA5C34371567BD2`
