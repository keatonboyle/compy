#!/bin/sh

echo 'Initializing...'

echo 'Linking dotfiles...'
./linkdotfiles.sh

echo 'Installing submodules...'
# TODO: I'm not sure this actually works.  Test me.
git submodule update --init --recursive --rebase


# TODO: automatically update submodules for vim packages.

echo 'Setting defaults...'
./macsettings.sh

echo 'Installing stuff w/ homebrew...'
echo '  (If prompted for password, use system password)'
brew bundle install
brew update
brew upgrade
brew prune
brew cleanup
brew doctor

echo 'Logging into various tools to get dev environment ready...'
./login_to_tools.sh

echo 'Setting zsh as default shell...'
chsh -s /usr/local/bin/zsh  # This uses homebrew's installation of zsh.

echo "If you're setting things up for the first time, don't forget to review"
echo 'manual_setup.md for non-automated installations.'
