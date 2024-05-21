#!/bin/bash

packages=("alacritty" "bash" "btop" "duckdb" "git" "ipython" "nvim" "tmux" "xmodmap")

for p in "${packages[@]}"; do
  stow -Rv "$p"
done

sudo stow -t /usr/local/bin bin
