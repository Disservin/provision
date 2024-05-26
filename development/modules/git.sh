#!/bin/bash

# Install git if it's not installed
if ! command -v git &> /dev/null; then
  echo "Installing git..."
  sudo apt install -y git
  git config --global user.name $1
  git config --global user.email $2
else
  echo "git is already installed"
fi