#!/bin/sh
#
# Javascript

# Checks/Installs NodeJS
if test ! $(which node)
then
    echo " Installing Node.JS for you."
    brew install node
fi

# Update Packages
npm -g update

# Node Packages
if test ! $(which yo)
    then npm install -g yo
fi

if test ! $(which bower)
    then npm install -g bower
fi

if test ! $(which gulp)
    then npm install -g gulp
fi

if test ! $(which cordova)
    then npm install -g cordova
fi

exit 0
