#!/bin/sh

echo 'Initializing...'

echo 'Linking dotfiles...'
./linkdotfiles.sh

# TODO: automatically update submodules for vim packages.

echo 'Setting defaults...'
./macsettings.sh

echo 'Installing stuff w/ homebrew...'
brew bundle install
brew update
brew upgrade
brew prune
brew cleanup
brew doctor

echo 'Logging into various tools to get dev environment ready...'
./login_to_tools.sh
