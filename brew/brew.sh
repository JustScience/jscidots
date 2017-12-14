#!/bin/bash

# Install command-line tools using Homebrew

# Make sure we’re using the latest Homebrew
brew update

# Upgrade any already-installed formulae
brew upgrade

# Bash 4 - Note: don’t forget to add `/usr/local/bin/bash` to `/etc/shells` before running `chsh`.
brew install bash
brew install bash-completion

brew install homebrew/completions/brew-cask-completion
brew tap homebrew/dupes

brew install vim --with-override-system-vi
brew install homebrew/dupes/nano
brew install homebrew/dupes/grep
brew install homebrew/dupes/openssh
brew install homebrew/dupes/screen
brew install homebrew/dupes/unzip

brew install z
brew install git
brew install rbenv ruby-build
brew install imagemagick --with-webp
brew install node # This installs `npm` too 
brew install unrar
# brew install watch

brew install postgresql #, restart_service: true
brew install mysql #, restart_service: true
brew install sqlite3
brew install redis

brew install heroku/brew/heroku

# Remove outdated versions from the cellar
brew cleanup
