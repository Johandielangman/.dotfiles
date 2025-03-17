#!/bin/bash
cd ~/.dotfiles

if [ -f ~/.dotfiles/ssh/.ssh/tx_gitlab_rsa ]; then
    chmod 600 ~/.dotfiles/ssh/.ssh/tx_gitlab_rsa
fi