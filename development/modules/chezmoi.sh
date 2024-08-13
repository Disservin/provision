#!/bin/bash

if ! command -v chezmoi &> /dev/null; then
  echo "Installing chezmoi..."
  sh -c "$(curl -fsLS get.chezmoi.io/lb)" -- init --apply $1
else
  echo "chezmoi is already installed"
fi

