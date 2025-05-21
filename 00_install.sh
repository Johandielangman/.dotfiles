#!/bin/bash
cd ~/.dotfiles

# Array of packages to stow
packages=(
    bash
    profile
    git
    tmux
    ssh
    ranger
)

# Stow each package
for package in "${packages[@]}"; do
    echo "stow $package"
    stow -D $package
    stow -v $package
done
