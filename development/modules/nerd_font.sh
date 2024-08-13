#!/bin/bash

echo "Installing Nerd Fonts..."

sudo apt install unzip fontconfig -y

wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/JetBrainsMono.zip -O JetBrainsMono.zip
unzip JetBrainsMono.zip -d JetBrainsMono
sudo mv JetBrainsMono /usr/share/fonts/
fc-cache -f -v
sudo rm JetBrainsMono.zip
sudo rm -rf JetBrainsMono
