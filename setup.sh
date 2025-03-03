#!/bin/sh

echo "grant sudo"
sudo echo "sudo granted"

echo "installing pip3"
sudo pacman -S python-pip --no-interaction

echo "install module requests (as system package)"
pip3 install requests --break-system-packages

echo "installing sensors"
sudo pacman -S lm_sensors --no-interaction

echo "uploading conf to ~/.config/waybar"
mkdir -p ~/.config/waybar
cp -r config-gitlab.jsonc style.css config.jsonc scripts/ ~/.config/waybar

echo "Waybar Configuration Done Successfully"

