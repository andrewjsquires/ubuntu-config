#!/bin/bash

 declare -a arr=("git" "atom" "curl")
 for name in "${arr[@]}"
 do
    dpkg -s $name &> /dev/null

    if [ $? -ne 0 ]

        then
            echo "$name - installing"
            sudo apt-get update
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
         sudo apt-get update
         sudo apt install -y ./google-chrome-stable_current_amd64.deb
     else
         echo "$name - already installed"
 fi

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
