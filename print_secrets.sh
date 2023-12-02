#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Print env secrets
# @raycast.mode fullOutput

# Optional parameters:
# @raycast.icon 🫢

# Documentation:
# @raycast.author Odysseas_Eth
# @raycast.authorURL twitter.com/odysseas_eth

file_path=~/.zsh_secrets

cat $file_path
