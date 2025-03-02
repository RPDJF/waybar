#!/bin/sh

echo "installing pip3"
sudo pacman -S python-pip

echo "install module requests (as system package)"
pip3 install requests ---break-system-packages

echo "uploading conf to ~/.config/waybar"
mkdir -p ~/.config/waybar
cp -r config-gitlab.jsonc style.css config.jsonc scripts/ ~/.config/waybar

echo "Waybar Configuration Done Successfully"

