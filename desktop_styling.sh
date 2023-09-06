#!/bin/bash

echo disable lock screen
gsettings set org.gnome.desktop.screensaver lock-enabled false

echo remove desktop items
gsettings set org.gnome.shell.extensions.desktop-icons show-trash false
gsettings set org.gnome.shell.extensions.desktop-icons show-home false
gsettings set org.gnome.desktop.background show-desktop-icons false

echo turn off calendar notifications
gsettings set org.gnome.evolution-data-server.calendar notify-with-tray false

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
gsettings set org.gnome.shell.extensions.dash-to-dock extend-height false
gsettings set org.gnome.shell.extensions.dash-to-dock dock-position BOTTOM
gsettings set org.gnome.shell.extensions.dash-to-dock transparency-mode FIXED
settings set org.gnome.shell.extensions.dash-to-dock dash-max-icon-size 64
gsettings set org.gnome.shell.extensions.dash-to-dock unity-backlit-items true
# gsettings set org.gnome.shell.extensions.dash-to-dock autohide true
# gsettings set org.gnome.shell.extensions.dash-to-dock intellihide true

# echo add favourites
# gsettings set org.gnome.shell favorite-apps  "['org.gnome.Nautilus.desktop', 'snap-store_ubuntu-software.desktop', 'org.gnome.Terminal.desktop', 'code_code.desktop', 'google-chrome.desktop', 'org.gnome.gedit.desktop', 'postman_postman.desktop']"


echo changing background
sudo cp ./img/* /usr/share/backgrounds
gsettings set org.gnome.desktop.background picture-uri-dark file:////usr/share/backgrounds/nightsky.jpg
