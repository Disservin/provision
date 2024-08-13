#!/bin/bash

echo "Installing Neovim..."

curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux64.tar.gz
sudo rm -rf /opt/nvim
sudo tar -C /opt -xzf nvim-linux64.tar.gz

# add it to the PATH
echo 'export PATH="$PATH:/opt/nvim-linux64/bin"' >> ~/.zshrc

rm nvim-linux64.tar.gz