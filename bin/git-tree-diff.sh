#!/usr/bin/env bash

# Git command taken from https://developer.atlassian.com/blog/2015/01/a-better-pull-request/#comment-1811819137
git merge-tree `git merge-base "$1" "$2"` "$1" "$2"
