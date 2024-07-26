#!/bin/bash

DIR="$( cd -- "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"
CHEZMOI_REPONAME="Disservin"

GIT_USERNAME="Disservin"
GIT_EMAIL="disservin.social@gmail.com"

echo $DIR
echo $(whoami)

set -eu

die() {
  exit "$1"
}

trap 'die $?' EXIT

# Update the package list and upgrade the installed packages
"$DIR/modules/upgrade.sh"

# Install curl
"$DIR/modules/curl.sh"

# Install git
"$DIR/modules/git.sh" $GIT_USERNAME $GIT_EMAIL

# Install tmux
"$DIR/modules/tmux.sh"

# Install zsh
"$DIR/modules/zsh.sh"

# Install chezmoi
"$DIR/modules/chezmoi.sh" $CHEZMOI_REPONAME

# Install various packages
"$DIR/modules/packages.sh"

# Install neovim
"$DIR/modules/neovim.sh"

# Install Python 3 and pip
"$DIR/modules/python.sh"

# Install JetBrains Mono Nerd font
"$DIR/modules/nerd_font.sh"

# Install ripgrep
"$DIR/modules/rg.sh"

# Install fzf
"$DIR/modules/fzf.sh"

echo "Provisioning complete! Restart your terminal."

# Switch to zsh
chsh -s $(which zsh)

source ~/.zshrc

# Logout to apply changes
echo "Logging out..."

# Countdown
for i in {3..1}; do
  echo $i
  sleep 1
done

pkill -KILL -u $USER
