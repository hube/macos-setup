#!/usr/bin/env bash

# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Inspect system status
brew doctor

source homebrew/brew.sh

# Remove outdated versions from the cellar
brew cleanup
