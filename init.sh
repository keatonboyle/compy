#!/bin/sh

echo 'Initializing...'

brew bundle install
brew update
brew upgrade
brew prune
brew cleanup
brew doctor
