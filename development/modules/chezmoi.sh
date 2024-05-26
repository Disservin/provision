#!/bin/bash

if ! command -v chezmoi &> /dev/null; then
  echo "Installing chezmoi..."
  sh -c "$(curl -fsLS get.chezmoi.io)" -- -b /usr/local/bin
else
  echo "chezmoi is already installed"
fi

chezmoi init --apply $1
