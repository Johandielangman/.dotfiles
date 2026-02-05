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

# Compile fortune files
if [ -f "$HOME/.dotfiles/fortunes/.fortunes/compile.sh" ]; then
	echo "Compiling fortune files..."
	cd "$HOME/.dotfiles/fortunes/.fortunes"
	chmod +x compile.sh
	./compile.sh
fi

# One last update
sudo apt update
