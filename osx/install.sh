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
sudo brew update
brew upgrade

# Githup Repos as Formulae w/Taps
brew tap homebrew/dupes
brew tap caskroom/cask
brew tap caskroom/versions
brew tap caskroom/fonts

# Install Homebrew packages
brew install ack
brew install grc
brew install git
brew install hg
brew install wget
brew install tree
brew install zsh
brew install fasd
brew install hub
brew install ghi
brew install git-flow
brew install ctags
brew install libyaml
brew install heroku-toolbelt
brew install postgresql
brew install android-sdk
brew install reattach-to-user-namespace

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
brew install vim --with-lua --override-system-vi

# Remove temporary install files + fix links
brew cleanup
brew prune
brew tap --repair 

exit 0
