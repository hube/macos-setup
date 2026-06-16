#!/usr/bin/env bash

SSH_KEY_FILE=$1
COMMENT=$2

# Generates an SSH key with no passphrase
ssh-keygen -t ed25519 -f $SSH_KEY_FILE -C $COMMENT -N ""

ssh-add $SSH_KEY_FILE
