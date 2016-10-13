#!/usr/bin/env bash
#
# My choice of OS X settings based on https://github.com/herrbischoff/awesome-osx-command-line and http://mths.be/macos

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

# Enable Safari Develop Menu and Web Inspector
defaults write com.apple.Safari IncludeInternalDebugMenu -bool true && \
defaults write com.apple.Safari IncludeDevelopMenu -bool true && \
defaults write com.apple.Safari WebKitDeveloperExtrasEnabledPreferenceKey -bool true && \
defaults write com.apple.Safari com.apple.Safari.ContentPageGroupIdentifier.WebKit2DeveloperExtrasEnabled -bool true && \
defaults write NSGlobalDomain WebKitDeveloperExtras -bool true

# Prevent Time Machine from Prompting to Use New Hard Drives as Backup Volume
defaults write com.apple.TimeMachine DoNotOfferNewDisksForBackup -bool true

# Finder
## Show All File Extensions
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

## Show the ~/Library folder
chflags nohidden ~/Library

## Show "Quit Finder" Menu Item
defaults write com.apple.finder QuitMenuItem -bool true

## Expand save panel
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true && \
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode2 -bool true

## Expand print panel
defaults write NSGlobalDomain PMPrintingExpandedStateForPrint -bool true && \
defaults write NSGlobalDomain PMPrintingExpandedStateForPrint2 -bool true

## Show Status Bar
defaults write com.apple.finder ShowStatusBar -bool true

## Set Default Finder Location to Home Folder
defaults write com.apple.finder NewWindowTarget -string "PfLo" && \
defaults write com.apple.finder NewWindowTargetPath -string "file://${HOME}"

# Disable auto-correct
defaults write -g NSAutomaticSpellingCorrectionEnabled -bool false

# Enable firewall
sudo /usr/libexec/ApplicationFirewall/socketfilterfw --setglobalstate on

# Check for software updates daily, not just once per week
defaults write com.apple.SoftwareUpdate ScheduleFrequency -int 1

for app in "Finder" "App Store"; do
    killall "${app}" &> /dev/null
done
