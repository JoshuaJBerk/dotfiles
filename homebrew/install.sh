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

# Githup Repos as Formulae w/Taps
brew tap homebrew/dupes
brew tap caskroom/cask
brew tap caskroom/homebrew-versions

# Install Homebrew packages
brew install ack
brew install grc
brew install git
brew install hg
brew install wget
brew install tree
brew install zsh
brew install libyaml
brew install heroku-toolbelt
brew install postgresql
brew install hub
brew install git-flow

# GNU Duplicates
brew install coreutils --default-names
brew install moreutils --default-names
brew install findutils --default-names
brew install gnu-sed --default-names
brew install gawk --default-names
brew install gnutls --default-names
brew install gnu-indent --default-names
brew install gnu-getopt --default-names
brew install grep --default-names

# Install more recent versions of some OS X tools
brew install vim --override-system-vi

# Remove temporary install files
brew cleanup
brew tap --repair 

exit 0
