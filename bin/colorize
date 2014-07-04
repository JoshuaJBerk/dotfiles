#!/bin/sh
#
# Colorize

if [[ -z "$SSH_CLIENT" && "$TERM_PROGRAM" == "iTerm.app" ]]; then

  hour=$(date +"%H")

  if [[ "$hour" -ge "7" && "$hour" -le "19" ]]; then
    value="Day"
  else
    value="Night"
  fi

  if [[ -z "$TMUX" ]]; then
    echo "\033]50;SetProfile=$value\a"
  else
    echo "\033Ptmux;\033\033]50;SetProfile=$value\a\033\\"
  fi
fi
