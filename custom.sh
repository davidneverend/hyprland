#!/bin/bash

clear
echo "Applying dark mode"
gsettings set org.gnome.desktop.interface color-scheme prefer-dark
sleep 2

clear
echo "Refreshing keyrings..."
echo
sudo pacman -Syu
sudo pacman -S archlinux-keyring
sleep 2

clear
echo "Installing git"
sudo pacman -S git
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
echo "Installing apps"
sudo pacman -S texlive-fontsextra python-gobject nautilus firefox thunderbird gvfs-smb git libreoffice-fresh spotify-launcher waybar python-requests ttf-font-awesome noto-fonts-emoji otf-font-awesome texlive-fontsextra gnome-text-editor
sleep 2

clear 
echo "Remove apps"
sudo pacman -R dolphin vim
sleep 2


#clear
#cd
#git clone https://github.com/davidneverend/hyprland.git
#cp -f hyprland/config/hypr/hyprland.conf /home/david/.config/hypr/hyprland.conf 
#cp -f hyprland/config/kitty/kitty.conf /home/david/.config/kitty/kitty.conf
#cp -f hyprland/.bashrc /home/david/.bashrc

# A voir :
#hyprpaper
