#!/usr/bin/env bash

set -e

sudo apt install -y unzip fontconfig wget

FONT_DIR="$HOME/.local/share/fonts/MesloNF"

# Check if any Meslo font already exists
if find "$FONT_DIR" -name "MesloLGS NF*.ttf" | grep -q .; then
  echo "Meslo Nerd Font is already installed."
  exit 0
fi

mkdir -p "$FONT_DIR"
wget -O "Meslo.zip" "https://github.com/ryanoasis/nerd-fonts/releases/download/v3.1.1/Meslo.zip"

# Extract directly into the font dir (flatten structure)
unzip -j "Meslo.zip" "*.ttf" -d "$FONT_DIR"
rm "Meslo.zip"

fc-cache -fv

echo "Meslo Nerd Font installed successfully."
