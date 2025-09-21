#!/bin/bash
set -e
echo "📦 Initializing installation of dotfiles..."

mkdir -p dot_install && cd dot_install
git clone https://github.com/akilah-medici/dotfiles.git
rsync -av --remove-source-files dotfiles/* ~/.config
cd ..
rm -r dot_install
echo "Installation Complete!"
