#!/bin/bash

# Install curl if it's not installed
if ! command -v curl &> /dev/null; then
  echo "Installing curl..."
  sudo  apt install -y curl
else
  echo "curl is already installed"
fi