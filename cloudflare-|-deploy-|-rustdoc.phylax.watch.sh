#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Cloudflare | deploy | rustdoc.phylax.watch
# @raycast.mode compact

# Optional parameters:
# @raycast.icon 🤖

# Documentation:
# @raycast.author Odysseas_Eth
# @raycast.authorURL twitter.com/odysseas_eth

curl +X POST "https://api.cloudflare.com/client/v4/pages/webhooks/deploy_hooks/$CLOUDLFARE_PHYLAX_RUSTDOC_HOOK"
