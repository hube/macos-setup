#!/usr/bin/env bash

# Setup git configuration, including creating an SSH key for signed commits

ALLOWED_SIGNERS_PATH=~/.ssh/allowed_signers
GIT_USER_EMAIL=395901+hube@users.noreply.github.com
SSH_PRIVATE_KEY=~/.ssh/id_ed25519
SSH_PUBLIC_KEY=${SSH_PRIVATE_KEY}.pub

# Create an SSH key with a comment like "hube@Twoflower"
source 4.1-setup-ssh-key.sh $SSH_PRIVATE_KEY "$(id -un)@$(hostname)"

# Add an entry with the git user email to the SSH allowed_signers file
# Allows for the signature to be recognized when running
# `git log --show-signature`
echo -n "${GIT_USER_EMAIL} " >> $ALLOWED_SIGNERS_PATH
cat $SSH_PUBLIC_KEY >> $ALLOWED_SIGNERS_PATH

# Setup git

git config set --global user.name "Hubert Lee 🤖"
git config set --global user.email $GIT_USER_EMAIL
git config set --global user.signingKey $SSH_PUBLIC_KEY

git config set --global init.defaultBranch main
git config set --global core.excludesfile ~/.gitignore

# Configure commit and tag signing with an SSH key
git config set --global commit.gpgsign true
git config set --global tag.gpgsign true
git config set --global gpg.format ssh
git config set --global gpg.ssh.allowedSignersFile $ALLOWED_SIGNERS_PATH
