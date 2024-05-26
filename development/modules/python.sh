#!/bin/bash

if ! command -v python3 &> /dev/null; then
  echo "Installing Python 3..."
  sudo apt install -y python3
else
  echo "Python 3 is already installed"
fi

if ! command -v pip3 &> /dev/null; then
  echo "Installing pip..."
  sudo apt install -y python3-pip
else
  echo "pip is already installed"
fi

if ! command -v virtualenv &> /dev/null; then
  echo "Installing virtualenv..."
  pip3 install virtualenv
else
  echo "virtualenv is already installed"
fi

# pipx
if ! command -v pipx &> /dev/null; then
  echo "Installing pipx..."
  sudo apt install -y pipx
  pipx ensurepath
else
  echo "pipx is already installed"
fi