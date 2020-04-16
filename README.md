# dotfiles

Dotfiles to set up a macOS installation to my liking.

Based on/stolen from:

- https://github.com/freshshell/fresh
- https://github.com/holman/dotfiles
- https://github.com/mathiasbynens/dotfiles

## Installation

- Sign in to the App Store manually
- Run `git` command to prompt for installing developer tools
- Symlink fresh config file `ln -s "$HOME/.dotfiles/freshrc" "$HOME/.freshrc"`
- ``FRESH_BIN_PATH=/usr/local/bin FRESH_LOCAL="$HOME/denkristoffer/dotfiles" FRESH_LOCAL_SOURCE=denkristoffer/dotfiles /bin/bash -c "`curl -sL https://get.freshshell.com`"``

### Manual steps

The system still requires some manual setup after running. 

Remember to open and run the Little Snitch installer with e.g. `open /usr/local/Caskroom/little-snitch/4.5/LittleSnitch-4.5.dmg` – the path changes with the version.

Set name, email and signing key with the following local git config:

- `git config -f ~/.gitconfig.local user.name "John Appleseed"`
- `git config -f ~/.gitconfig.local user.email me@example.com`
- `git config -f ~/.gitconfig.local user.signingkey 3AA5C34371567BD2`

