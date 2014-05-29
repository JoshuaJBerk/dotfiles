#!/bin/sh
# Installs Applications for OSX

# Ask for the administrator password upfront
# sudo -v

###############################################################################
# ZSH                                                                         #
###############################################################################

# brew install zsh > /dev/null 2>&1

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
# export HOMEBREW_CASK_OPTS="--appdir=/Applications --caskroom=~/Applications"

# Setup Homebrew Cask
# brew tap caskroom/cask
# brew install brew-cask

# Install Applications
# brew cask install alfred
# brew cask install google-chrome
# brew cask install google-drive
# brew cask install google-hangouts
# brew cask install firefox
# brew cask install istat-menus
# brew cask install vlc
# brew cask install spotify
# brew cask install github
# brew cask install gpgtools
# brew cask install cheatsheet

# brew cask install virtualbox
# brew cask install mou
# brew cask install skype
# brew cask install utorrent

# Remove Cached Downloads
# brew cask cleanup

# Removes the Default 'Caskroom' Location
# rm -rf /opt

###############################################################################
# Miscellaneous                                                               #
###############################################################################

# Chrome Canary
# Firefox Nightly
# Sublime Text 3

# Xcode Command Line Tools
# xcode-select --install

###############################################################################
# All Done! :-D                                                               #
###############################################################################