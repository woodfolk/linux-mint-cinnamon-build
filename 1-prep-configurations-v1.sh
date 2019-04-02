#!/bin/bash
set -e
###################################################################################
# Written to be used on 64 bits computers
# Name:			1-prep-configurations-v1.sh
# Author:		Romano Woodfolk
# Created:		February 19, 2019
# Modified:		April 02, 2019 (110100100)
# Version:		1.0.0
# Website: 		http://www.romanowoodfolk.com
#---------------------------------------------------------------------------------#
# Comments: This script contains the installation commands for Linux Mint 19.1    #
# “Tessa” Cinnamon Edition an ubuntu based distributions.                         #
#---------------------------------------------------------------------------------#
#  Pre-Installation Configuration Script - Git/GitHub
#
# Problem solving commands
#
# Read before using it.
# https://www.atlassian.com/git/tutorials/undoing-changes/git-reset
# git reset --hard orgin/master
# ONLY if you are very sure and no other code contributors are on your github.
#
# Command that have helped in the past
# Force git to overwrite local files on pull - no merge
# git fetch all
# git push --set-upstream origin master
# git reset --hard orgin/master
#
# installing git if not installed

if ! location="$(type -p "git")" || [ -z "git" ]; then

   echo -e "---------------------------------------------------------------------------------"
	echo -e " Installing git for this script to work"
   echo -e "---------------------------------------------------------------------------------"

  	sudo apt install git -y
	# check if apt-git is installed
	if which apt-get > /dev/null; then

		sudo apt-get install -y git

	fi

fi

#setting up git
#https://www.atlassian.com/git/tutorials/setting-up-a-repository/git-config

git init
git config --global user.name "Romano woodfolk"
git config --global user.email "woodfolk@gmail.com"
sudo git config --system core.editor "gedit --wait --new-window"
git config --global credential.helper cache
git config --global credential.helper 'cache --timeout=100000'
git config --global push.default simple


echo -e "---------------------------------------------------------------------------------"
echo -e "                         Git Installed and configured                            "
echo -e "---------------------------------------------------------------------------------"

