#!/bin/bash
set -e
###################################################################################
# Written to be used on 64 bits computers
# Name:			install-plank-themes-v1.sh
# Author:		Romano Woodfolk
# Created:		January 26, 2019
# Modified:		March 03, 2019 (110100100)
# Version:		1.0.0
# Website:	 	http://www.romanowoodfolk.com 
#---------------------------------------------------------------------------------#
# Comments: This script contains the installation commands for Linux Mint 19.1    #
# “Tessa” Cinnamon Edition an ubuntu based distributions.                         #
#---------------------------------------------------------------------------------#
#
echo -e ""; clear; echo -e ""														# clear Screen
echo -e "------------------------------------------------------------------"
echo -e " Installing sardi..."
echo -e "------------------------------------------------------------------"



if ! location="$(type -p "git")" || [ -z "git" ]; then

	echo -e "----------------------------------------------------------------"
	echo -e " Installing git for this script to work"
	echo -e "----------------------------------------------------------------"
			
		sudo apt-get install -y git

else
	echo -e "-----------------------------------------------------------------"
  	echo -e " Git was installed. Proceeding..."
	echo -e "-----------------------------------------------------------------"
fi


# if there is a folder, delete it
[ -d /tmp/Plank-Themes ] && rm -rf /tmp/Sardi-Extra

#download from github
git clone https://github.com/erikdubois/Plank-Themes /tmp/Plank-Themes

#remove some of the files
find /tmp/Plank-Themes -maxdepth 1 -type f -exec rm -rf '{}' \;

# if there is no hidden folder then make one
[ -d $HOME"/.local/share/plank" ] || mkdir -p $HOME"/.local/share/plank"

# if there is no hidden folder then make one
[ -d $HOME"/.local/share/plank/themes" ] || mkdir -p $HOME"/.local/share/plank/themes"

# copy the files
cp -r /tmp/Plank-Themes/* ~/.local/share/plank/themes/

# remove files from tmp
rm -rf /tmp/Plank-Themes

echo -e "------------------------------------------------------------------"
echo -e "|                      plank themes installed                    |"
echo -e "------------------------------------------------------------------"
