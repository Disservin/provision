#!/bin/bash

if ! command -v fzf &> /dev/null; then
  echo "Installing fzf..."
  git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
  ~/.fzf/install
else
  echo "fzf is already installed"
fi

code="source <(fzf --zsh)"

if ! grep -q "$code" ~/.zshrc; then
  echo "Adding fzf to ~/.zshrc..."
  echo "$code" >> ~/.zshrc
else
  echo "fzf is already in ~/.zshrc"
fi