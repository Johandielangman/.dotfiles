#!/usr/bin/env bash

set -e

if [ ! -d "$HOME/.oh-my-bash" ]; then
    echo "$HOME/.oh-my-bash does not exist."
    bash -c "$(curl -fsSL https://raw.githubusercontent.com/ohmybash/oh-my-bash/master/tools/install.sh)"
fi
