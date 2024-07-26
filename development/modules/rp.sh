#!/bin/bash

if ! command -v rg &> /dev/null; then
  echo "Installing ripgrep..."
  sudo apt-get install ripgrep
else
  echo "ripgrep is already installed"
fi