#!/bin/bash

echo Clean up Chrome installer
rm google-chrome-stable_current_amd64.deb

 sudo apt-get update

 declare -a arr=("curl" "docker.io" "gnome-shell-extension-prefs" "dconf-editor" "gnome-tweaks", "zsh")
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

echo install vscode
sudo apt update
sudo apt install software-properties-common apt-transport-https wget
wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
sudo apt install code

echo install postman
curl -o- "https://dl-cli.pstmn.io/install/linux64.sh" | sh

echo get ohmyzsh
sh -c "$(wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"

echo Change keyboard to uk
gsettings set org.gnome.desktop.input-sources sources "[('xkb', 'gb')]"

echo make screen full size
cd /media/andy/VBox_GAs_7.0.10/
./autorun.sh


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
