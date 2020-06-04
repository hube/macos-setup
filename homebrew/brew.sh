#!/usr/bin/env bash

brew install \
  awscli \
  git \
  gradle \
  postgresql \
  pyenv \
  rbenv \
  redis

# Application-specific configuration
brew services start postgresql
brew services start redis
