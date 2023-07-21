#!/bin/bash

 sudo apt-get update

 declare -a arr=("git" "atom" "curl" "docker.io" "gnome-shell-extension-prefs" "dconf-editor" "gnome-tweaks", "zsh")
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

 name="google-chrome-stable"
 dpkg -s $name  &> /dev/null

 if [ $? -ne 0 ]

     then
         echo "$name - installing"
         wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
         sudo apt install -y ./google-chrome-stable_current_amd64.deb
     else
         echo "$name - already installed"
 fi

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
