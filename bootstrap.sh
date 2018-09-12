#!/bin/sh
set -e
cd ~

# Install Homebrew.  This will take care of Xcode Command Line Tools as well.
# We want this first so that we have Git.
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Pull down the repository and execute everything else from there.
git clone https://github.com/keatonboyle/compy.git 
cd compy
./init.sh
