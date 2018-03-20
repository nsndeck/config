#!/bin/bash

wget -q https://www.postgresql.org/media/keys/ACCC4CF8.asc -O - | sudo apt-key add -
sudo echo "deb http://apt.postgresql.org/pub/repos/apt/ `lsb_release -cs`-pgdg main" >> /etc/apt/sources.list.d/pgdg.list

sudo apt-get update -y
sudo apt-get install postgresql-10 -y

## http://yallalabs.com/linux/how-to-install-and-use-postgresql-10-on-ubuntu-16-04/
