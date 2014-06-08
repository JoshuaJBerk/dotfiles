#!/bin/sh
#
# Python

# Python3 Setup
if test ! $(which python3)
then brew install python3
fi

# Python Packages
easy_install SpoofMAC #MAC Address Manipulation

exit 0
