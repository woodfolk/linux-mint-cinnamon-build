#!/bin/bash
set -e
###################################################################################
# Written to be used on 64 bits computers
# Name:			0-prep-configurations-v1.sh
# Author:		Romano Woodfolk
# Created:		February 04, 2019
# Modified:		April 07, 2019 (110100100)
# Version:		1.0.0
# Website 	: 	http://www.romanowoodfolk.com
#---------------------------------------------------------------------------------#
# Comments: This script contains the installation commands for Linux Mint 19.1
# “Tessa” Cinnamon Edition an ubuntu based distributions.
#---------------------------------------------------------------------------------#
#  Pre-Installation Configuration Script
#
# Set USERNAME to ${USER:=$(/usr/bin/id -run)} 
# ${USER:=$(/usr/bin/id -run)}:$USER
#USERNAME="${USER:=$(/usr/bin/id -run)}:$USER" 
#USERNAME="${USER:=$(/usr/bin/id -run)}" 
echo "Creating Sub-Folders for $USERNAME" 
echo ""
echo -e ""; clear; echo -e ""														# clear Screen
echo -e "---------------------------------------------------------------------------------"
echo -e "creating home sub-folders...                                                     "
echo -e "---------------------------------------------------------------------------------"


[ -d $HOME"/.icons" ] || mkdir -p $HOME"/.icons"							# icons
chown $USERNAME: $HOME"/.icons" || chmod u+w $HOME"/.icons"
usermod -a -G $USERNAME $USERNAME || chmod g+w $HOME"/.icons"

[ -d $HOME"/.themes" ] || mkdir -p $HOME"/.themes"							# themes
chown $USERNAME: $HOME"/.themes" || chmod u+w $HOME"/.themes"
usermod -a -G $USERNAME $USERNAME || chmod g+w $HOME"/.themes"

[ -d $HOME"/.fonts" ] || mkdir -p $HOME"/.fonts"							# fonts
chown $USERNAME: $HOME"/.fonts" || chmod u+w $HOME"/.fonts"
usermod -a -G $USERNAME $USERNAME || chmod g+w $HOME"/.fonts"

[ -d $HOME"/.backgrounds"] || mkdir -p $HOME"/.backgrounds"				# personal wallpaper/backgrounds
chown $USERNAME: $HOME"/.backgrounds" || chmod u+w $HOME"/.backgrounds"
usermod -a -G $USERNAME $USERNAME || chmod g+w $HOME"/.backgrounds"

[ -d $HOME"/.ssh"] || mkdir -p $HOME"/.ssh"									# ssh key files
chown $USERNAME: $HOME"/.ssh" || chmod u+w $HOME"/.ssh"
usermod -a -G $USERNAME $USERNAME || chmod g+w $HOME"/.ssh"

[ -d $HOME"/Audio" ] || mkdir -p $HOME"/Audio" 								# Audio Files
chown $USERNAME: $HOME"/Audio" || chmod u+w $HOME"/Audio"
usermod -a -G $USERNAME $USERNAME || chmod g+w $HOME"/Audio"

[ -d $HOME"/Bin" ] || mkdir -p $HOME"/Bin" 									# custom bin files and scripts
chown $USERNAME: $HOME"/Bin" || chmod u+w $HOME"/Bin"
usermod -a -G $USERNAME $USERNAME || chmod g+w $HOME"/Bin"

[ -d $HOME"/Captures" ] || mkdir -p $HOME"/Captures" 						# Network Captures
chown $USERNAME: $HOME"/Captures" || chmod u+w $HOME"/Captures"
usermod -a -G $USERNAME $USERNAME || chmod g+w $HOME"/Captures"

[ -d $HOME"/Desktop" ] || mkdir -p $HOME"/Desktop" 						# created at install
chown $USERNAME: $HOME"/Desktop" || chmod u+w $HOME"/Desktop"
usermod -a -G $USERNAME $USERNAME || chmod g+w $HOME"/.icons"

[ -d $HOME"/Documents" ] || mkdir -p $HOME"/Documents" 					# created at install
chown $USERNAME: $HOME"/Documents" || chmod u+w $HOME"/Documents"
usermod -a -G $USERNAME $USERNAME || chmod g+w $HOME"/Documents"

[ -d $HOME"/Downloads" ] || mkdir -p $HOME"/Downloads" 					# created at install
chown $USERNAME: $HOME"/Downloads" || chmod u+w $HOME"/Downloads"
usermod -a -G $USERNAME $USERNAME || chmod g+w $HOME"/Downloads"

#[ -d $HOME"/DATA" ] || mkdir -p $HOME"/DATA" 								# DATA Files
#chown $USERNAME: $HOME"/.icons" || chmod u+w $HOME"/.icons"
#usermod -a -G $USERNAME $USERNAME || chmod g+w $HOME"/.icons"

#[ -d $HOME"/Dropbox" ] || mkdir -p $HOME"/Dropbox" 						# created by dropbox
#chown $USERNAME: $HOME"/Dropbox" || chmod u+w $HOME"/Dropbox"
#usermod -a -G $USERNAME $USERNAME || chmod g+w $HOME"/Dropbox"

[ -d $HOME"/Junk" ] || mkdir -p $HOME"/Junk" 								# Junk Files
chown $USERNAME: $HOME"/Junk" || chmod u+w $HOME"/Junk"
usermod -a -G $USERNAME $USERNAME || chmod g+w $HOME"/Junk"

#[ -d $HOME"/Insync" ] || mkdir -p $HOME"/Insync" 							# Insync
#chown $USERNAME: $HOME"/Insync" || chmod u+w $HOME"/Insync"
#usermod -a -G $USERNAME $USERNAME || chmod g+w $HOME"/Insync"

[ -d $HOME"/Music" ] || mkdir -p $HOME"/Music" 								# created at install
chown $USERNAME: $HOME"/Music" || chmod u+w $HOME"/Music"
usermod -a -G $USERNAME $USERNAME || chmod g+w $HOME"/Music"

[ -d $HOME"/Pictures" ] || mkdir -p $HOME"/Pictures" 						# created at install
chown $USERNAME: $HOME"/Pictures" || chmod u+w $HOME"/Pictures"
usermod -a -G $USERNAME $USERNAME || chmod g+w $HOME"/Pictures"

[ -d $HOME"/Programming" ] || mkdir -p $HOME"/Programming"				# Programming Files
chown $USERNAME: $HOME"/Programming" || chmod u+w $HOME"/Programming"
usermod -a -G $USERNAME $USERNAME || chmod g+w $HOME"/Programming"

[ -d $HOME"/Public" ] || mkdir -p $HOME"/Public" 							# created at install
chown $USERNAME: $HOME"/Public" || chmod u+w $HOME"/Public"
usermod -a -G $USERNAME $USERNAME || chmod g+w $HOME"/Public"

[ -d $HOME"/Scripts" ] || mkdir -p $HOME"/Scripts"	 						# Sctipts
chown $USERNAME: $HOME"/Scripts" || chmod u+w $HOME"/Scripts"
usermod -a -G $USERNAME $USERNAME || chmod g+w $HOME"/Scripts"

[ -d $HOME"/Templates" ] || mkdir -p $HOME"/Templates" 					# created at install
chown $USERNAME: $HOME"/Templates" || chmod u+w $HOME"/Templates"
usermod -a -G $USERNAME $USERNAME || chmod g+w $HOME"/Templates"

[ -d $HOME"/Videos" ] || mkdir -p $HOME"/Videos" 							# created at install
chown $USERNAME: $HOME"/Videos" || chmod u+w $HOME"/Videos"
usermod -a -G $USERNAME $USERNAME || chmod g+w $HOME"/Videos"

[ -d $HOME"/VMs" ] || mkdir -p $HOME"/VMs"			 						# Virtual Machines
chown $USERNAME: $HOME"/VMs" || chmod u+w $HOME"/VMs"
usermod -a -G $USERNAME $USERNAME || chmod g+w $HOME"/VMs"


##echo -e ""; clear; echo -e ""														# clear Screen
##echo -e "---------------------------------------------------------------------------------"
##echo -e " Changing directory ownership to $USERNAME                                           "
##echo -e "---------------------------------------------------------------------------------"
##cd ~
##sudo chown $USERNAME.$USERNAME *
##sudo chown $USERNAME.$USERNAME .*
##sudo chown $USERNAME.$USERNAME ~/*
##sudo chown $USERNAME.$USERNAME ~/.*
##sudo chown $USERNAME.$USERNAME ../*
##sudo chown $USERNAME.$USERNAME ../.*

#[ -d $HOME"/.config/gtk-3.0" ] || mkdir -p $HOME"/.config/gtk-3.0"
#chown $USERNAME: $HOME"/.config/gtk-3.0" || chmod u+w $HOME"/.config/gtk-3.0"
#usermod -a -G $USERNAME $USERNAME || chmod g+w $HOME"/.config/gtk-3.0"

#[ -d $HOME"/.config/conky" ] || mkdir -p $HOME"/.config/conky"
#chown $USERNAME: $HOME"/.config/conky" || chmod u+w $HOME"/.config/conky"
#usermod -a -G $USERNAME $USERNAME || chmod g+w $HOME"/.config/conky"

#[ -d $HOME"/.config/variety" ] || mkdir -p $HOME"/.config/variety"
#chown $USERNAME: $HOME"/.config/variety" || chmod u+w $HOME"/.config/variety"
#usermod -a -G $USERNAME $USERNAME || chmod g+w $HOME"/.config/variety"

#[ -d $HOME"/.config/variety/scripts" ] || mkdir -p $HOME"/.config/variety/scripts"
#chown $USERNAME: $HOME"/.config/variety/scripts" || chmod u+w $HOME"/.config/variety/scripts"
#usermod -a -G $USERNAME $USERNAME || chmod g+w $HOME"/.config/variety/scripts"

#[ -d $HOME"/.config/sublime-text-3" ] || mkdir -p $HOME"/.config/sublime-text-3"
#chown $USERNAME: $HOME"/.config/sublime-text-3" || chmod u+w $HOME"/.config/sublime-text-3"
#usermod -a -G $USERNAME $USERNAME || chmod g+w $HOME"/.config/sublime-text-3"

#[ -d $HOME"/.config/sublime-text-3/Packages" ] || mkdir -p $HOME"/.config/sublime-text-3/Packages"
#chown $USERNAME: $HOME"/.config/sublime-text-3/Packages" || chmod u+w $HOME"/.config/sublime-text-3/Packages"
#usermod -a -G $USERNAME $USERNAME || chmod g+w $HOME"/.config/sublime-text-3/Packages"

#[ -d $HOME"/.config/sublime-text-3/Packages/User" ] || mkdir -p $HOME"/.config/sublime-text-3/Packages/User"
#chown $USERNAME: $HOME"/.config/sublime-text-3/Packages/User" || chmod u+w $HOME"/.config/sublime-text-3/Packages/User"
#usermod -a -G $USERNAME $USERNAME || chmod g+w $HOME"/.config/sublime-text-3/Packages/User"


#[ -d $HOME"/.gimp-2.8" ] || mkdir -p $HOME"/.gimp-2.8"
#chown $USERNAME: $HOME"/.gimp-2.8" || chmod u+w $HOME"/.gimp-2.8"
#usermod -a -G $USERNAME $USERNAME || chmod g+w $HOME"/.gimp-2.8"

#[ -d $HOME"/.gimp-2.8/scripts" ] || mkdir -p $HOME"/.gimp-2.8/scripts"
#chown $USERNAME: $HOME"/.gimp-2.8/scripts" || chmod u+w $HOME"/.gimp-2.8/scripts"
#usermod -a -G $USERNAME $USERNAME || chmod g+w $HOME"/.gimp-2.8/scripts"

#[ -d $HOME"/.gimp-2.8/themes" ] || mkdir -p $HOME"/.gimp-2.8/themes"
#chown $USERNAME: $HOME"/.gimp-2.8/themes" || chmod u+w $HOME"/.gimp-2.8/themes"
#usermod -a -G $USERNAME $USERNAME || chmod g+w $HOME"/.gimp-2.8/themes"


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

