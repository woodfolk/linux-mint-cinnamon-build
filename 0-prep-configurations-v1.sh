#!/bin/bash
set -e
###################################################################################
# Written to be used on 64 bits computers
# Name:			0-prep-configurations-v1.sh
# Author:		Romano Woodfolk
# Created:		February 04, 2019
# Modified:		March 14, 2019 (110100100)
# Version:		1.0.0
# Website 	: 	http://www.romanowoodfolk.com
#---------------------------------------------------------------------------------#
# Comments: This script contains the installation commands for Linux Mint 19.1
# “Tessa” Cinnamon Edition an ubuntu based distributions.
#---------------------------------------------------------------------------------#
#  Pre-Installation Configuration Script
#
echo -e ""; clear; echo -e ""														# clear Screen
echo -e "---------------------------------------------------------------------------------"
echo -e "creating home sub-folders...                                                     "
echo -e "---------------------------------------------------------------------------------"


[ -d $HOME"/.icons" ] || mkdir -p $HOME"/.icons"							# icons
[ -d $HOME"/.themes" ] || mkdir -p $HOME"/.themes"							# themes
[ -d $HOME"/.fonts" ] || mkdir -p $HOME"/.fonts"							# fonts
[ -d $HOME"/.backgrounds"] || mkdir -p $HOME"/.backgrounds"				# personal wallpaper/backgrounds
[ -d $HOME"/.ssh"] || mkdir -p $HOME"/.ssh"									# ssh key files

[ -d $HOME"/Audio" ] || mkdir -p $HOME"/Audio" 								# Audio Files
[ -d $HOME"/Bin" ] || mkdir -p $HOME"/Bin" 									# custom bin files and scripts
[ -d $HOME"/Captures" ] || mkdir -p $HOME"/Captures" 						# Network Captures
[ -d $HOME"/Desktop" ] || mkdir -p $HOME"/Desktop" 						# created at install
[ -d $HOME"/Documents" ] || mkdir -p $HOME"/Documents" 					# created at install
[ -d $HOME"/Downloads" ] || mkdir -p $HOME"/Downloads" 					# created at install
#[ -d $HOME"/DATA" ] || mkdir -p $HOME"/DATA" 								# DATA Files
#[ -d $HOME"/Dropbox" ] || mkdir -p $HOME"/Dropbox" 						# created by dropbox
[ -d $HOME"/Junk" ] || mkdir -p $HOME"/Junk" 								# Junk Files
#[ -d $HOME"/Insync" ] || mkdir -p $HOME"/Insync" 							# Insync
[ -d $HOME"/Music" ] || mkdir -p $HOME"/Music" 								# created at install
[ -d $HOME"/Pictures" ] || mkdir -p $HOME"/Pictures" 						# created at install
[ -d $HOME"/Programming" ] || mkdir -p $HOME"/Programming"				# Programming Files
[ -d $HOME"/Public" ] || mkdir -p $HOME"/Public" 							# created at install
[ -d $HOME"/Scripts" ] || mkdir -p $HOME"/Scripts"	 						# Sctipts
[ -d $HOME"/Templates" ] || mkdir -p $HOME"/Templates" 					# created at install
[ -d $HOME"/Videos" ] || mkdir -p $HOME"/Videos" 							# created at install
[ -d $HOME"/VMs" ] || mkdir -p $HOME"/VMs"			 						# Virtual Machines


echo -e ""; clear; echo -e ""														# clear Screen
echo -e "---------------------------------------------------------------------------------"
echo -e " Changing directory ownership to $USER                                           "
echo -e "---------------------------------------------------------------------------------"
sudo chown $USER.$USER .*
sudo chown $USER.$USER *

#[ -d $HOME"/.config/gtk-3.0" ] || mkdir -p $HOME"/.config/gtk-3.0"

#[ -d $HOME"/.config/conky" ] || mkdir -p $HOME"/.config/conky"

#[ -d $HOME"/.config/variety" ] || mkdir -p $HOME"/.config/variety"
#[ -d $HOME"/.config/variety/scripts" ] || mkdir -p $HOME"/.config/variety/scripts"

#[ -d $HOME"/.config/sublime-text-3" ] || mkdir -p $HOME"/.config/sublime-text-3"
#[ -d $HOME"/.config/sublime-text-3/Packages" ] || mkdir -p $HOME"/.config/sublime-text-3/Packages"
#[ -d $HOME"/.config/sublime-text-3/Packages/User" ] || mkdir -p $HOME"/.config/sublime-text-3/Packages/User"


#[ -d $HOME"/.gimp-2.8" ] || mkdir -p $HOME"/.gimp-2.8"
#[ -d $HOME"/.gimp-2.8/scripts" ] || mkdir -p $HOME"/.gimp-2.8/scripts"
#[ -d $HOME"/.gimp-2.8/themes" ] || mkdir -p $HOME"/.gimp-2.8/themes"

echo -e "---------------------------------------------------------------------------------"
echo -e "                         Created home sub-folders                                "
echo -e "---------------------------------------------------------------------------------"


echo -e ""; clear; echo -e ""														# clear Screen
echo -e "---------------------------------------------------------------------------------"
echo -e "replacing your .bashrc file with a custom .bashrc file from ParrotSec OS...      "
echo -e "---------------------------------------------------------------------------------"

mv ~/.bashrc bashrc.old
cp bashrc ~/.bashrc

echo -e "---------------------------------------------------------------------------------"
echo -e "                            Replaced .bashrc file                                "
echo -e "---------------------------------------------------------------------------------"


# installing git if not installed

#echo -e ""; clear; echo -e ""														# clear Screen
#echo -e "---------------------------------------------------------------------------------"
#echo -e " Install and configure Git/GitHub                                                "
#echo -e "---------------------------------------------------------------------------------"
#
#if ! location="$(type -p "git")" || [ -z "git" ]; then
#
#    echo -e "---------------------------------------------------------------------------------"
#	echo -e "installing git for this script to work"
#    echo -e "---------------------------------------------------------------------------------"
#
#  	sudo apt install git -y
#	# check if apt-git is installed
#	if which apt-get > /dev/null; then
#
#		sudo apt-get install -y git
#
#	fi
#
#fi
#
##setting up git
##https://www.atlassian.com/git/tutorials/setting-up-a-repository/git-config
#
#git init
#git config --global user.name "Romano woodfolk"
#git config --global user.email "woodfolk@gmail.com"
#sudo git config --system core.editor nano
#git config --global credential.helper cache
#git config --global credential.helper 'cache --timeout=100000'
#git config --global push.default simple
#
#
#echo -e "---------------------------------------------------------------------------------"
#echo -e "                         Git Installed and configured                            "
#echo -e "---------------------------------------------------------------------------------"
echo -e "---------------------------------------------------------------------------------"
echo -e "|                   Pre-Installation Configurations Completed                   |"
echo -e "---------------------------------------------------------------------------------"

