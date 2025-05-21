#!/usr/bin/env bash

set -e

sudo apt install -y unzip
sudo apt install -y fontconfig

FONT_DIR="$HOME/.local/share/fonts/MesloNF"
FONT_FILE="$FONT_DIR/MesloLGS NF Regular.ttf"

if [ -f "$FONT_FILE" ]; then
    echo "Meslo Nerd Font is already installed."
    exit 0
fi

mkdir -p "$FONT_DIR"
wget -O Meslo.zip https://github.com/ryanoasis/nerd-fonts/releases/download/v3.1.1/Meslo.zip
unzip Meslo.zip -d "$FONT_DIR"
rm Meslo.zip
fc-cache -fv