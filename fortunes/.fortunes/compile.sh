#!/usr/bin/env bash

for file in ./src/*.txt; do
    name=$(basename "$file" .txt)
    cp "$file" "./bin/$name"
    strfile "./bin/$name" "./bin/$name.dat"
done
