#!/usr/bin/env bash

set -e

# Determine the brew path
BREW_PATH=""
if [ -d "$HOME/.linuxbrew" ]; then
	BREW_PATH="$HOME/.linuxbrew/bin/brew"
elif [ -d "/home/linuxbrew/.linuxbrew" ]; then
	BREW_PATH="/home/linuxbrew/.linuxbrew/bin/brew"
fi

# Install Homebrew if not present
if ! command -v brew &> /dev/null && [ ! -f "$BREW_PATH" ]; then
	echo "Installing Homebrew..."
	NONINTERACTIVE=1 /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
	
	# Re-determine the brew path after installation
	if [ -d "$HOME/.linuxbrew" ]; then
		BREW_PATH="$HOME/.linuxbrew/bin/brew"
	elif [ -d "/home/linuxbrew/.linuxbrew" ]; then
		BREW_PATH="/home/linuxbrew/.linuxbrew/bin/brew"
	fi
fi

# Set up Homebrew in PATH for this session
if [ -n "$BREW_PATH" ] && [ -f "$BREW_PATH" ]; then
	eval "$("$BREW_PATH" shellenv)"
	
	# Add to bashrc for future sessions
	if [ -r "$HOME/.bashrc" ]; then
		if ! grep -q "linuxbrew" "$HOME/.bashrc"; then
			echo '' >> "$HOME/.bashrc"
			echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"' >> "$HOME/.bashrc"
		fi
	fi
fi

# Now run brew commands
if command -v brew &> /dev/null; then
	echo "Running brew bundle..."
	if [ -f "$HOME/.dotfiles/Brewfile" ]; then
		brew bundle --file="$HOME/.dotfiles/Brewfile" || true
	else
		echo "Warning: Brewfile not found at $HOME/.dotfiles/Brewfile"
	fi

	echo "Linking packages..."
	brew link python@3.11 2>/dev/null || echo "Note: python@3.11 not installed or already linked"
	brew link python@3.12 2>/dev/null || echo "Note: python@3.12 not installed or already linked"
	brew link node@20 2>/dev/null || echo "Note: node@20 not installed or already linked"
else
	echo "Warning: brew command not available after installation"
fi