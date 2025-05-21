#!/usr/bin/env bash

set -e

if ! command -v brew &> /dev/null; then
	sh -c "$(curl -fsSL https://raw.githubusercontent.com/Linuxbrew/install/master/install.sh)"
	export brew=/home/linuxbrew/.linuxbrew/bin
	test -d ~/.linuxbrew && eval $(~/.linuxbrew/bin/brew shellenv)
	test -d /home/linuxbrew/.linuxbrew && eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)
	test -r ~/.profile && echo "eval \$($(brew --prefix)/bin/brew shellenv)" >>~/.profile

    brew bundle --file="$HOME/.dotfiles/Brewfile"

    brew link python@3.11
    brew link node@20

fi