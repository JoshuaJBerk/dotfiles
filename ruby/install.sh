#!/bin/sh

if test ! $(which rbenv)
then
  brew install rbenv
fi

if test ! $(which ruby-build)
then
  brew install ruby-build
fi

# Update System Gems
sudo gem update

# Install Gems
sudo gem install -n /usr/local/bin cocoapods

exit 0
