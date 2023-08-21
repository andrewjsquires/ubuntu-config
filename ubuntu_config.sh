#!/bin/bash

 sudo apt-get update

 declare -a arr=("atom" "curl" "docker.io" "gnome-shell-extension-prefs" "dconf-editor" "gnome-tweaks", "zsh")
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

#install postman
curl -o- "https://dl-cli.pstmn.io/install/linux64.sh" | sh

#get ohmyzsh
sh -c "$(wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"

 # name="aws"
 # dpkg -s $name  &> /dev/null
 #
 # if [ $? -ne 0 ]
 #
 #     then
 #         echo "$name - installing"
 #         curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
 #         unzip awscliv2.zip
 #         sudo ./aws/install
 #     else
 #         echo "$name - already installed"
 # fi
