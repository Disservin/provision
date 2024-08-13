#!/bin/bash

echo "Installing Neovim..."

# Detect architecture
ARCH=$(uname -m)

if [ "$ARCH" == "x86_64" ]; then
    DOWNLOAD_URL="https://github.com/neovim/neovim/releases/latest/download/nvim-linux64.tar.gz"
elif [[ "$ARCH" == "armv7l" || "$ARCH" == "aarch64" ]]; then
    DOWNLOAD_URL="https://github.com/neovim/neovim/releases/latest/download/nvim-arm64.tar.gz"  # Modify if ARM-specific build available
else
    echo "Unsupported architecture: $ARCH"
    exit 1
fi

# Download and install Neovim
curl -LO $DOWNLOAD_URL
sudo rm -rf /opt/nvim
sudo tar -C /opt -xzf nvim-linux64.tar.gz

# Add it to the PATH
echo 'export PATH="$PATH:/opt/nvim-linux64/bin"' >> ~/.zshrc

rm nvim-linux64.tar.gz

echo "Neovim installation complete."
