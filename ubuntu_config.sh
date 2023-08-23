#!/bin/bash

echo Enter username
read username

echo Enter VBox_GAs version - hint cd into /media/$username/ eg. 7.0.10
read VBox_GAs

echo Clean up Chrome installer
rm google-chrome-stable_current_amd64.deb


echo install standard packages
 sudo apt-get update

 declare -a arr=("curl" "docker.io" "gnome-shell-extension-prefs" "dconf-editor" "gnome-tweaks" "zsh")
 for name in "${arr[@]}"
 do
    dpkg -s $name &> /dev/null

    if [ $? -ne 0 ]

        then
            echo "$name - installing"
            sudo apt-get install -y $name

        else
            echo "$name - already installed"
    fi
 done

echo install nodejs
cd ~
curl -sL https://deb.nodesource.com/setup_lts.x | sudo -E bash -
sudo apt install -y nodejs

echo install vscode
sudo apt update
sudo apt install software-properties-common apt-transport-https wget
wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
sudo apt install code

echo install postman cli
curl -o- "https://dl-cli.pstmn.io/install/linux64.sh" | sh

echo install postman app
snap install postman

echo get ohmyzsh
sh -c "$(wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"

echo Change keyboard to uk
gsettings set org.gnome.desktop.input-sources sources "[('xkb', 'gb')]"

echo make screen full size
cd /media/$username/VBox_GAs_$VBox_GAs/
./autorun.sh

echo disable lock screen
gsettings set org.gnome.desktop.screensaver lock-enabled false

echo install aws cli
 name="aws"
 dpkg -s $name  &> /dev/null
 
 if [ $? -ne 0 ]
 
     then
         echo "$name - installing"
         curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
         unzip awscliv2.zip
         sudo ./aws/install
     else
         echo "$name - already installed"
 fi

cd ~