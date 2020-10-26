#!/usr/bin/env bash
#
# My choice of OS X settings based on:
# - https://github.com/herrbischoff/awesome-osx-command-line
# - http://mths.be/macos

# Ask for the administrator password upfront
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Close any open System Preferences panes, to prevent them from overriding
# settings we’re about to change
osascript -e 'tell application "System Preferences" to quit'

# Safari
## Enable Safari Develop Menu and Web Inspector
defaults write com.apple.Safari IncludeInternalDebugMenu -bool true && \
defaults write com.apple.Safari IncludeDevelopMenu -bool true && \
defaults write com.apple.Safari WebKitDeveloperExtrasEnabledPreferenceKey -bool true && \
defaults write com.apple.Safari com.apple.Safari.ContentPageGroupIdentifier.WebKit2DeveloperExtrasEnabled -bool true && \
defaults write NSGlobalDomain WebKitDeveloperExtras -bool true

# Make Safari search default to Contains instead of Starts With
defaults write com.apple.Safari FindOnPageMatchesWordStartsOnly -bool false

# Prevent Time Machine from Prompting to Use New Hard Drives as Backup Volume
defaults write com.apple.TimeMachine DoNotOfferNewDisksForBackup -bool true

# Disable auto-correct
defaults write -g NSAutomaticSpellingCorrectionEnabled -bool false

# Enable firewall
sudo /usr/libexec/ApplicationFirewall/socketfilterfw --setglobalstate on 

# Check for software updates daily, not just once per week
defaults write com.apple.SoftwareUpdate ScheduleFrequency -int 1

# Finder
## Show All File Extensions
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

## Show the ~/Library folder
chflags nohidden ~/Library
xattr -d com.apple.FinderInfo ~/Library &> /dev/null

## Hide ~/Movies and ~/Public
chflags hidden ~/Public ~/Movies

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

# Dock
## Empty Dock
defaults write com.apple.dock persistent-apps -array

## Hide indicator lights
defaults write com.apple.dock show-process-indicators -bool false

## Set icon size to 36 pixels
defaults write com.apple.dock tilesize -int 36

for app in "Finder" "Dock" "Safari"; do
    killall "${app}" &> /dev/null
done

exit 0
