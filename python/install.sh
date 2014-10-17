#!/bin/sh
#
# Python

# Python3 Setup
if test ! $(which python3)
then brew install python3
fi

# Packages
pip3 install pylint --upgrade
pip3 install twitter --upgrade

exit 0
