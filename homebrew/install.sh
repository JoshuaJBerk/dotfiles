#!/bin/sh
#
# Homebrew

# Check for Homebrew
if test ! $(which brew)
then
  echo "  Installing Homebrew for you."
  ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)" > /tmp/homebrew-install.log
fi

# Update Homebrew & packages
brew update
brew upgrade

# Install Homebrew packages
brew install coreutils
brew install moreutils
brew install findutils
brew install gnu-sed --default-names
brew install ack
brew install spark
brew install grc
brew install git
brew install tmux

# Install more recent versions of some OS X tools
brew install vim --override-system-vi
brew install homebrew/dupes/grep

# Remove temporary install files
brew cleanup

exit 0
