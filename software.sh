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

# Fonts
sudo apt install unzip
sudo apt install fontconfig
mkdir -p ~/.local/share/fonts/MesloNF
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.1.1/Meslo.zip
unzip Meslo.zip -d ~/.local/share/fonts/MesloNF
rm Meslo.zip
fc-cache -fv
