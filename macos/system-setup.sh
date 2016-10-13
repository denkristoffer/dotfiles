#!/usr/bin/env bash
#
# My choice of OS X settings based on http://mths.be/osx

# Ask for the administrator password upfront
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Close any open System Preferences panes, to prevent them from overriding
# settings we’re about to change
osascript -e 'tell application "System Preferences" to quit'

# Fix for the ancient UTF-8 bug in QuickLook (https://mths.be/bbo)
# See https://github.com/mathiasbynens/dotfiles/issues/237
echo "0x08000100:0" > ~/.CFUserTextEncoding

# Restart automatically if the computer freezes
sudo systemsetup -setrestartfreeze on

# Disable auto-correct
defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -bool false

# Show the ~/Library folder
chflags nohidden ~/Library

# Expand save panel by default
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true

# Expand print panel by default
defaults write NSGlobalDomain PMPrintingExpandedStateForPrint -bool true

# Check for software updates daily, not just once per week
defaults write com.apple.SoftwareUpdate ScheduleFrequency -int 1

for app in "cfprefsd" "SystemUIServer"; do
    killall "${app}" &> /dev/null
done
