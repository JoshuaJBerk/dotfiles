#!/bin/sh
#
# Installs Tmux
if test ! $(which tmux)
then 
    echo " Installing tmux for you."
    brew install tmux
fi

exit 0
