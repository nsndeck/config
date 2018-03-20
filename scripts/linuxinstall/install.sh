#!/bin/bash

# check /etc/lsb-release and lsb_release -cs

sudo apt-get install -y python-software-properties software-properties-common wget apt-transport-https curl ca-certificates

#sudo ./scripts/vbox_settings.sh
sudo ./scripts/git_install.sh
#./scripts/config_install.sh
sudo ./scripts/vim_install.sh
#sudo ./scripts/nodejs6_install.sh
#sudo ./scripts/nodejs8_install.sh
sudo ./scripts/java8_install.sh
#sudo ./scripts/zsh_install.sh
sudo ./scripts/tmux_install.sh
sudo ./scripts/postman_install.sh
#sudo ./scripts/postgresql_install.sh
sudo ./scripts/skype_install.sh
sudo ./scripts/visualstudiocode_install.sh
#sudo ./scripts/rethinkdb_install.sh
sudo ./scripts/docker_install.sh
sudo ./scripts/chrome_install.sh

#https://gist.github.com/Prototype-X/fd8bf6d8b929224621613316bf37db02

#git clone https://github.com/nsndeck/config.git ~/work/git/config
