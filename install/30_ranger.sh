#!/usr/bin/env bash

set -e

if ! command -v ranger &> /dev/null; then
    sudo apt install ranger -y
fi