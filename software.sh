#! /bin/bash

set -e

# Install Homebrew
if ! command -v brew &> /dev/null; then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# Install Homebrew packages from Brewfile
brew bundle --file="$HOME/.dotfiles/Brewfile"

# Link installed brew packages
brew link python@3.11
brew link node@20

# Packer (plugin manager for neovim)
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim

# C compiler
sudo apt install build-essential

# Install oh-my-bash
bash -c "$(curl -fsSL https://raw.githubusercontent.com/ohmybash/oh-my-bash/master/tools/install.sh)"

# One last update
sudo apt update