#!/bin/sh
#
# Javascript

# Checks/Installs Node Version Manager
brew install nvm

# Node Packages
if test $(which npm)
then
  npm -g update
  npm install -g cordova
  npm install -g jshint
  npm install -g csslint
fi

exit 0
