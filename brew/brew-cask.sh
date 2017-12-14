#!/bin/bash


# to maintain cask ....
# brew update && brew upgrade brew-cask && brew cleanup && brew cask cleanup`


# Install native apps

brew install caskroom/cask/brew-cask
# brew tap caskroom/versions


# dev
brew cask install iterm2
brew cask install sublime-text
brew cask install rubymine
brew cask install sourcetree
brew cask install postico
brew cask install sequel-pro

# design 
brew cask install adobe-creative-cloud
# brew cask install adobe-illustrator-cc
# brew cask install adobe-photoshop-cc
# brew cask install adobe-photoshop-lightroom
# brew cask install adobe-acrobat-pro

# messaging
brew cask install slack
brew cask install skype
brew cask install discord

# business
brew cask install dropbox

# music
brew cask install djay-pro
brew cask install spotify

# browsers
brew cask install google-chrome
brew cask install firefox
brew cask install opera
# brew cask install torbrowser

# less often
brew cask install screenflick


brew tap caskroom/fonts 


brew cleanup