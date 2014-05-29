#!/bin/sh
# Installs Applications for OSX

# Ask for the administrator password upfront
sudo -v

###############################################################################
# Apple App Store - Do This Manually                                          #
###############################################################################

# Cloud
# Fantastical
# Transmit
# Dash
# Xcode
# Codepoints
# Kaleidoscope
# Caffeine
# Limechat
# Livereload
# Unarchiver

###############################################################################
# Homebrew Cask                                                               #
###############################################################################

# Sets the Environment Variable
export HOMEBREW_CASK_OPTS="--appdir=/Applications --caskroom=~/Applications"

# Setup Homebrew Cask
brew update
brew tap caskroom/cask
brew install brew-cask

# Install Applications
brew cask install alfred
brew cask install google-chrome
brew cask install google-drive
brew cask install google-hangouts
brew cask install firefox
brew cask install istat-menus
brew cask install vlc
brew cask install spotify
brew cask install github
brew cask install sublime-text
brew cask install gpgtools
brew cask install cheatsheet

# brew cask install virtualbox
# brew cask install mou
# brew cask install skype
# brew cask install utorrent

# Remove Cached Downloads
brew cask cleanup

# Removes the Default 'Caskroom' Location
# rm -rf /opt

###############################################################################
# Miscellaneous                                                               #
###############################################################################

# Chrome Canary
# Firefox Nightly

# Xcode Command Line Tools
xcode-select --install

softwareupdate --install --all

###############################################################################
# Configure                                                                   #
###############################################################################

# Wipe all (default) app icons from the Dock
defaults write com.apple.dock persistent-apps -array ""

# Add custom icons into the Dock
defaults write com.apple.dock 'persistent-apps' -array-add '<dict><key>tile-data</key><dict><key>file-data</key><dict><key>_CFURLString</key><string>/Applications/Safari.app/</string><key>_CFURLStringType</key><integer>0</integer></dict></dict></dict>'
defaults write com.apple.dock 'persistent-apps' -array-add '<dict><key>tile-data</key><dict><key>file-data</key><dict><key>_CFURLString</key><string>/Applications/Google Chrome Canary.app/</string><key>_CFURLStringType</key><integer>0</integer></dict></dict></dict>'
defaults write com.apple.dock 'persistent-apps' -array-add '<dict><key>tile-data</key><dict><key>file-data</key><dict><key>_CFURLString</key><string>/Applications/FirefoxNightly.app/</string><key>_CFURLStringType</key><integer>0</integer></dict></dict></dict>'
defaults write com.apple.dock 'persistent-apps' -array-add '<dict><key>tile-data</key><dict><key>file-data</key><dict><key>_CFURLString</key><string>/Applications/VLC.app/</string><key>_CFURLStringType</key><integer>0</integer></dict></dict></dict>'
defaults write com.apple.dock 'persistent-apps' -array-add '<dict><key>tile-data</key><dict><key>file-data</key><dict><key>_CFURLString</key><string>/Applications/Spotify.app/</string><key>_CFURLStringType</key><integer>0</integer></dict></dict></dict>'
defaults write com.apple.dock 'persistent-apps' -array-add '<dict><key>tile-data</key><dict><key>file-data</key><dict><key>_CFURLString</key><string>/Applications/App Store.app/</string><key>_CFURLStringType</key><integer>0</integer></dict></dict></dict>'
defaults write com.apple.dock 'persistent-apps' -array-add '<dict><key>tile-data</key><dict><key>file-data</key><dict><key>_CFURLString</key><string>/Applications/LimeChat.app/</string><key>_CFURLStringType</key><integer>0</integer></dict></dict></dict>'
defaults write com.apple.dock 'persistent-apps' -array-add '<dict><key>tile-data</key><dict><key>file-data</key><dict><key>_CFURLString</key><string>/Applications/Dash.app/</string><key>_CFURLStringType</key><integer>0</integer></dict></dict></dict>'
defaults write com.apple.dock 'persistent-apps' -array-add '<dict><key>tile-data</key><dict><key>file-data</key><dict><key>_CFURLString</key><string>/Applications/GitHub.app/</string><key>_CFURLStringType</key><integer>0</integer></dict></dict></dict>'
defaults write com.apple.dock 'persistent-apps' -array-add '<dict><key>tile-data</key><dict><key>file-data</key><dict><key>_CFURLString</key><string>/Applications/Sublime Text.app/</string><key>_CFURLStringType</key><integer>0</integer></dict></dict></dict>'
defaults write com.apple.dock 'persistent-apps' -array-add '<dict><key>tile-data</key><dict><key>file-data</key><dict><key>_CFURLString</key><string>/Applications/Utilities/Terminal.app/</string><key>_CFURLStringType</key><integer>0</integer></dict></dict></dict>'
defaults write com.apple.dock 'persistent-apps' -array-add '<dict><key>tile-data</key><dict><key>file-data</key><dict><key>_CFURLString</key><string>/Applications/System Preferences.app/</string><key>_CFURLStringType</key><integer>0</integer></dict></dict></dict>'

# Remove iTunesHelper from login
osascript -e 'tell application "System Events" to delete login item "iTunesHelper"' > /dev/null 2>&1

# Start Applications at login
osascript -e 'tell application "System Events" to make new login item at end of login items with properties { path: "/Applications/Alfred 2.app", hidden:true }' > /dev/null 2>&1
osascript -e 'tell application "System Events" to make new login item at end of login items with properties { path: "/Applications/Caffeine.app", hidden:true }' > /dev/null 2>&1
osascript -e 'tell application "System Events" to make new login item at end of login items with properties { path: "/Applications/CheatSheet.app", hidden:true }' > /dev/null 2>&1
osascript -e 'tell application "System Events" to make new login item at end of login items with properties { path: "/Applications/Divvy.app", hidden:true }' > /dev/null 2>&1
osascript -e 'tell application "System Events" to make new login item at end of login items with properties { path: "/Applications/Google Drive.app", hidden:true }' > /dev/null 2>&1
osascript -e 'tell application "System Events" to make new login item at end of login items with properties { path: "/Applications/Flux.app", hidden:true }' > /dev/null 2>&1
osascript -e 'tell application "System Events" to make new login item at end of login items with properties { path: "/Applications/Fantastical.app", hidden:true }' > /dev/null 2>&1
osascript -e 'tell application "System Events" to make new login item at end of login items with properties { path: "/Applications/Google Chrome Canary.app", hidden:true }' > /dev/null 2>&1
osascript -e 'tell application "System Events" to make new login item at end of login items with properties { path: "/Applications/LiveReload.app", hidden:true }' > /dev/null 2>&1
osascript -e 'tell application "System Events" to make new login item at end of login items with properties { path: "/Applications/Codepoints.app", hidden:true }' > /dev/null 2>&1
osascript -e 'tell application "System Events" to make new login item at end of login items with properties { path: "/Applications/Transmit.app/Contents/MacOS/TransmitMenu.app", hidden:true }' > /dev/null 2>&1

# Menu bar: Insert iStat Menu Modules
defaults write com.apple.systemuiserver menuExtras -array "/Library/Application\ Support/iStat\ Menus\ 4/extras/iStatMenusCPU.menu" "/Library/Application\ Support/iStat\ Menus\ 4/extras/iStatMenusMemory.menu" "/Library/Application\ Support/iStat\ Menus\ 4/extras/iStatMenusDrives.menu" "/Library/Application\ Support/iStat\ Menus\ 4/extras/iStatMenusNetwork.menu" "/System/Library/CoreServices/Menu Extras/AirPort.menu" "/Library/Application\ Support/iStat\ Menus\ 4/extras/iStatMenusTemps.menu" "/Library/Application\ Support/iStat\ Menus\ 4/extras/iStatMenusBattery.menu" "/Library/Application\ Support/iStat\ Menus\ 4/extras/iStatMenusDateAndTimes.menu"

killall Dock && killall SystemUIServer

###############################################################################
# All Done! :-D                                                               #
###############################################################################