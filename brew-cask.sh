#!/bin/bash


# to maintain cask ....
#     brew update && brew upgrade brew-cask && brew cleanup && brew cask cleanup`


# Install native apps

brew install caskroom/cask/brew-cask
# brew tap caskroom/versions

# daily
brew cask install spectacle
brew cask install 1password
brew cask install spotify
# brew cask install gyazo

# dev
brew cask install atom
brew cask install slack
brew cask install imagealpha
brew cask install imageoptim

# browsers
brew cask install google-chrome
brew cask install firefox
brew cask install brave-browser

# less often
brew cask install vlc
brew cask install kap
