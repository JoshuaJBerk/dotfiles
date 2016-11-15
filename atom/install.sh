#!/bin/sh
#
# Install atom packages

# Check for Atom Installation
if test ! $(which atom)
then brew install Caskroom/cask/atom
fi

# Git
apm install git-plus
apm install git-time-machine

# Linter
apm install linter
apm install linter-csslint
apm install linter-eslint
apm install linter-htmlhint
apm install linter-jsonlint
apm install linter-scss-lint
apm install linter-tidy

# Design
apm install pigments

# REPL
apm install atom-html-preview

# Miscellaneous
apm install file-icons
apm install atom-beautify
apm install highlight-selected
apm install w3c-validation 
apm install open-recent
