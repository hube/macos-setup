#!/usr/bin/env bash

# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Inspect system status
brew doctor

brew install \
  git \
  libusb \
  vim \
  zsh

# Casks
brew install \
  1password \
  adobe-acrobat-reader \
  docker-desktop \
  firefox \
  gnucash \
  google-chrome \
  heroic \
  iterm2 \
  karabiner-elements \
  obsidian \
  rectangle \
  scroll-reverser \
  steam \
  sublime-text \
  the-unarchiver \
  vlc \
  --cask

# Remove outdated versions from the cellar
brew cleanup
