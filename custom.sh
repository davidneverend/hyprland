#!/bin/bash

clear
echo "Refreshing keyrings..."
echo
sudo pacman -Sy
sudo pacman -S archlinux-keyring
sleep 2

clear
echo "Installing Yay..."
echo
cd
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
sleep 2

clear
echo "Installing Firefox & Thunderbird & LibreOffice & Spotify & Sublime-Text"
sudo pacman -S firefox thunderbird libreoffice-fresh spotify-launcher
yay -S sublime-text-4
sleep 2

clear
echo "Applying dark mode"
gsettings set org.gnome.desktop.interface color-scheme prefer-dark
sleep 2

clear
cd
git clone https://github.com/davidneverend/hyprland.git
cp -f hyprland/config/hypr/hyprland.conf /home/david/.config/hypr/hyprland.conf 
cp -f hyprland/config/kitty/kitty.conf /home/david/.config/kitty/kitty.conf

