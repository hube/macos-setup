#!/usr/bin/env bash

brew install \
  awscli \
  git \
  gradle \
  postgresql \
  pow \
  pyenv \
  rbenv \
  redis \
  ruby-build

# Application-specific configuration
brew services start postgresql
brew services start redis
