# ubuntu-config
Configuration for basic apps such as curl, zsh, VSCode, node lts, Postman, aws cli. 
It also maximises the screen and ensures the keyboard is in UK format

# Prerequisites
### Setup VM
Install iso from https://ubuntu.com/download/desktop
In VirtualBox Manager, click New. 

'In Unattended Guest OS Install Setup', change username and password. 
 
Change the following
- Base Memory ~ 11000 MB
- Processeors: 4 CPUs
- Disk Size ~ 125 GB

### Install Chrome
See [How to Install Google Chrome on Ubuntu 22.04]

```
sudo apt install wget
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
```
Log into account, it will take a few minutes for [LastPass] extensions to load, access GitHub

### Install git & Clone repo

```
sudo apt-get update
sudo apt-get install -y git

cd ~
mkdir dev
cd dev
git clone git@github.com:andrewjsquires/ubuntu-config.git
```

### [Generating a new SSH key]
```
# Click Enter on each prompt
./gen_ssh.sh

# Copy the text and use it for the next section
```
See [Adding a new SSH key to your account]

1. In the upper-right corner of any page, click your profile photo, then click Settings.
2. In the "Access" section of the sidebar, click  SSH and GPG keys.
3. Click New SSH key or Add SSH key.

### AWS Code Whisperer
This needs to be installed manually in VSCode, see [Installing the AWS Toolkit for Visual Studio Code] 

### Niggles
Maximising the screen is managed in the script, if this doesn't work see [Ubuntu on Virtualbox screen is too small, can't change resolution]

May need to add your user to the super users file, see [Adding the Username to the Sudoers File]

```
# password should be 'changeme'
gedit /etc/sudoers

# add name in sudoers
# User privilege specification
root	ALL=(ALL:ALL) ALL
andy  ALL=(ALL:ALL) ALL
```

# Usage
Run `./ubuntu_config.sh` to install basic apps such as curl, zsh, VSCode, node, Postman, aws cli. 
It takes two inputs:
- username
- VBox_GAs - used to run the software to maximise screen. cd into /media/$username and find folder begining with VBox_GAs. 
Example VBox_GAs_7.0.10. In this case the input is expecting 7.0.10

Run `./gen_ssh.sh` to generate ssh keys

To set git repo `git remote set-url origin git@github.com:andrewjsquires/ubuntu-config.git`

[//]: # (Reference Links)

  [How to Install Google Chrome on Ubuntu 22.04]: <https://linuxhint.com/install-google-chrome-on-ubuntu-22-04/>

  [Generating a new SSH key]: <https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent#generating-a-new-ssh-key>

  [Adding a new SSH key to your account]: <https://docs.github.com/en/authentication/connecting-to-github-with-ssh/adding-a-new-ssh-key-to-your-github-account>

  [Adding the Username to the Sudoers File]: <https://www.baeldung.com/linux/username-not-in-sudoers-file#adding-the-username-to-the-sudoers-file>

  [Ubuntu on Virtualbox screen is too small, can't change resolution]: <https://superuser.com/questions/1507127/ubuntu-on-virtualbox-screen-is-too-small-cant-change-resolution>

  [Installing the AWS Toolkit for Visual Studio Code]: <https://docs.aws.amazon.com/toolkit-for-vscode/latest/userguide/setup-toolkit.html>
