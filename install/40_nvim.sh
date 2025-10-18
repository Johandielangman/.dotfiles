#!/usr/bin/env bash

set -e

NVIM_DIR="$HOME/.dotfiles/nvim/.config/nvim"
if [ -d "$NVIM_DIR" ]; then
  echo "Neovim is already installed."
  exit 0
fi

git clone https://github.com/LazyVim/starter $NVIM_DIR
rm -rf $NVIM_DIR/.git