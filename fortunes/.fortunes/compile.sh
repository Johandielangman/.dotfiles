#!/usr/bin/env bash

# Create bin directory if it doesn't exist
mkdir -p ./bin

for file in ./src/*.txt; do
    name=$(basename "$file" .txt)
    cp "$file" "./bin/$name"
    strfile "./bin/$name" "./bin/$name.dat"
done
