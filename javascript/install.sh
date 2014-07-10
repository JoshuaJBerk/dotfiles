#!/bin/sh
#
# Javascript

# Checks/Installs Node
brew install node

# Update Packages
npm -g update

# Node Packages
npm install -g yo
npm install -g bower
npm install -g gulp
npm install -g cordova

exit 0
