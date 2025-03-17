#! /bin/bash

set -e

# Run an update first
sudo apt-get update

# Install build dependencies
sudo apt-get install build-essential procps curl file git

# Install Homebrew
if ! command -v brew &> /dev/null; then
	sh -c "$(curl -fsSL https://raw.githubusercontent.com/Linuxbrew/install/master/install.sh)"
	export brew=/home/linuxbrew/.linuxbrew/bin
	test -d ~/.linuxbrew && eval $(~/.linuxbrew/bin/brew shellenv)
	test -d /home/linuxbrew/.linuxbrew && eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)
	test -r ~/.profile && echo "eval \$($(brew --prefix)/bin/brew shellenv)" >>~/.profile
fi

# Install oh-my-bash
bash -c "$(curl -fsSL https://raw.githubusercontent.com/ohmybash/oh-my-bash/master/tools/install.sh)"

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
