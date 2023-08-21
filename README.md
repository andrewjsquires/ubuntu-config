# ubuntu-config
Configuration for basic apps such as git, atom, aws cli

# Prerequisites
### Setup VM
Install iso from https://ubuntu.com/download/desktop
In VirtualBox Manager, click New. 'In Unattended Guest OS Install Setup', change username and password. 
get 
Change the following
- Base Memory ~ 11000 MB
- Processeors: 4 CPUs
- Disk Size ~ 125 GB

Need to install git

```sh
sudo apt-get update
sudo apt-get install -y git
```
### Install Chrome
See [How to Install Google Chrome on Ubuntu 22.04]

```sh
sudo apt install wget
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
```
Log into account, it will take a few minutes for [LastPass] extensions to load

### [Generating a new SSH key]
```ssh
# Click Enter on each prompt
ssh-keygen -t ed25519 -C "your_email@example.com"

# Copy it from the command line The key fingerprint is:
```
See [Adding a new SSH key to your account]

1. In the upper-right corner of any page, click your profile photo, then click Settings.
2. In the "Access" section of the sidebar, click  SSH and GPG keys.
3. Click New SSH key or Add SSH key.

### Clone repo
```sh
cd ~
mkdir dev
cd dev
git clone git@github.com:andrewjsquires/ubuntu-config.git
```

# Usage
To make screen go bigger see [these instructions](
https://superuser.com/questions/1507127/ubuntu-on-virtualbox-screen-is-too-small-cant-change-resolution)

Run `./ubuntu_config.sh` to install basic apps such as git, atom, aws cli

Run `./gen_ssh.sh` to generate ssh keys

To set git repo `git remote set-url origin git@github.com:andrewjsquires/ubuntu-config.git`

[//]: # (Reference Links)

  [How to Install Google Chrome on Ubuntu 22.04]: <https://linuxhint.com/install-google-chrome-on-ubuntu-22-04/>
  [Generating a new SSH key]: <https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent#generating-a-new-ssh-key>
  [Adding a new SSH key to your account]: <https://docs.github.com/en/authentication/connecting-to-github-with-ssh/adding-a-new-ssh-key-to-your-github-account>
