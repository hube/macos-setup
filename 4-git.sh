#!/usr/bin/env bash

# Configure git user info
git config --global user.name "Hubert Lee 🤖"
git config --global user.email hube@users.noreply.github.com

# Configure global .gitignore file
git config --global core.excludesfile ~/.gitignore

# default, but git will complain if not set
git config --global pull.rebase false
