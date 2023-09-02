#!/bin/bash

echo disable lock screen
gsettings set org.gnome.desktop.screensaver lock-enabled false

echo remove desktop items
gsettings set org.gnome.shell.extensions.desktop-icons show-trash false
gsettings set org.gnome.shell.extensions.desktop-icons show-home false


echo change to dark 
gsettings set org.gnome.shell.ubuntu color-scheme prefer-dark
gsettings set org.gnome.desktop.interface gtk-theme Yaru-dark
gsettings set org.gnome.desktop.interface color-scheme prefer-dark

#reset to light
#gsettings reset org.gnome.shell.ubuntu color-scheme

echo install themes
# PPA to install themes
sudo add-apt-repository ppa:daniruiz/flat-remix
sudo apt update
sudo apt install -y flat-remix-gnome

echo moving launcher to bottom
gsettings set org.gnome.shell.extensions.dash-to-dock dock-position BOTTOM