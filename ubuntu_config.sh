#!/bin/bash

 declare -a arr=("git" "atom")
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
         sudo apt-get update
         sudo apt-get install awscli -y
     else
         echo "$name - already installed"
 fi
