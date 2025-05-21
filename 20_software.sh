#!/usr/bin/env bash

set -e

# Run an update first
sudo apt-get update

# Install build dependencies
sudo apt-get install build-essential procps curl file git

for script in "$HOME/.dotfiles/install/"*.sh; do
	[ -f "$script" ] || continue
	chmod +x "$script"
	"$script"
done

# One last update
sudo apt update
