#!/bin/bash

# Install git if it's not installed
if ! command -v git &> /dev/null; then
  echo "Installing git..."
  sudo apt install -y git
else
  echo "git is already installed"
fi