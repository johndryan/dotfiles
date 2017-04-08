#!/usr/bin/env bash

# Install native apps

# Update
brew update
brew upgrade

# Install cask
brew install caskroom/cask/brew-cask

brew cask install onepassword
brew cask install adobe-creative-cloud
brew cask install appzapper
brew cask install arduino
# brew cask install atom
brew cask install caffeine
brew cask install cd-to
brew cask install coda
# brew cask install coderunner
brew cask install dash
# brew cask install divvy
brew cask install dropbox
brew cask install evernote
# brew cask install fission
brew cask install flickr-uploadr
brew cask install framer
brew cask install google-chrome
brew cask install handbrake
# brew cask install imageoptim
brew cask install kaleidoscope
brew cask install omnigraffle
# brew cask install paparazzi
brew cask install paintcode
brew cask install processing
brew cask install sequel-pro
brew cask install silverlight
brew cask install sketch
brew cask install skype
brew cask install spotify
# brew cask install sublime-text
# brew cask install textmate
brew cask install things
brew cask install tower
brew cask install transmit
# brew cask install vagrant
# brew cask install virtualbox
# brew cask install vlc


# NON-CASK ==========================
# App Store -------------------------
# divvy
# ember
# tweetbot
# writer
# xcode
# pages, numbers, keynote, ilife apps
# Other -----------------------------
# Adobe Creative Cloud
# LittleSnapper
# mountee


# Remove outdated versions from the cellar.
brew cleanup

echo "=========================="
echo "                          "
echo "         COMPLETE         "
echo " (See 1Pass for Licenses) "
echo "                          "
echo "=========================="
echo "                          "
echo "  INSTALL FROM APP STORE: "
echo "- Xcode"
echo "- IA Writer"
echo "- Tweetbot"
echo "- Divvy"
echo "- Keynote/Pages/Numbers"
echo "- iMovie?"
echo "- Microsoft Office?"
echo "--------------------------"
echo "                          "
echo "       INSTALL OTHER:     "
echo "- Adobe?"
echo "                          "
echo "=========================="