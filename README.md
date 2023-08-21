# ubuntu-config
Configuration for basic apps such as git, atom, aws cli

# Prerequisites
See [How to install instructions](https://fossbytes.com/how-to-install-ubuntu-20-04-lts-virtualbox-windows-mac-linux/)

Install iso from https://ubuntu.com/download/desktop
When setting up VM, opt for 4 CPU, 

Need to install git

```sh
sudo apt-get update
sudo apt-get install -y git
```

# Usage
To make screen go bigger see [these instructions](
https://superuser.com/questions/1507127/ubuntu-on-virtualbox-screen-is-too-small-cant-change-resolution)

Run `./ubuntu_config.sh` to install basic apps such as git, atom, aws cli

Run `./gen_ssh.sh` to generate ssh keys

To set git repo `git remote set-url origin git@github.com:andrewjsquires/ubuntu-config.git`
