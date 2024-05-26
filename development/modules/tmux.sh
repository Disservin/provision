#!/bin/bash

# Install tmux if it's not installed
if ! command -v tmux &> /dev/null; then
  echo "Installing tmux..."
  sudo apt install -y tmux
else
  echo "tmux is already installed"
fi