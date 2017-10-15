#!/bin/bash

sudo apt update && apt list --upgradable

if [ $? == 0 ]; then
	echo "Proceed with update? [y/n]"
	read -n 1 update
	if [ "${update,,}" == "y" ]; then
		sudo apt full-upgrade && sudo apt autoremove
	else
		exit 1
	fi
else
	exit 1
fi
