#!/bin/sh

echo "grant sudo"
sudo echo "sudo granted"

echo "installing necessary fonts"
sudo pacman -Syu ttf-font-awesome

echo "installing pip3"
sudo pacman -S python-pip --noconfirm

echo "install module requests (as system package)"
pip3 install requests --break-system-packages

echo "installing sensors"
sudo pacman -S lm_sensors --noconfirm

echo "uploading conf to ~/.config/waybar"
mkdir -p ~/.config/waybar
cp -r config-gitlab.jsonc style.css config.jsonc scripts/ ~/.config/waybar

echo "Waybar Configuration Done Successfully"

