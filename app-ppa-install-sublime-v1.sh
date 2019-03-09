set -e
###################################################################################
# Written to be used on 64 bits computers
# Name:			app-ppa-install-sublime-v1.sh
# Author:		Romano Woodfolk
# Created:		January 29, 2019
# Modified:		March 09, 2019 (110100100)
# Version:		1.0.0
# Website:	 	http://www.romanowoodfolk.com
#---------------------------------------------------------------------------------#
# Comments: This script contains the installation commands for Linux Mint 19.1    #
# “Tessa” Cinnamon Edition an ubuntu based distributions.                         #
#---------------------------------------------------------------------------------#
#  Install Sublime
#
#https://download.sublimetext.com/sublime_text_3_build_3176_x64.tar.bz2
echo -e ""; clear; echo -e ""														# clear Screen
echo -e "------------------------------------------------------------------"
echo -e "..installing Sublime Text..."
echo -e "------------------------------------------------------------------"
echo -e ""


# installing dependent application
echo -e "------------------------------------------------------------------"
echo -e "..adding support packages..."
echo -e "------------------------------------------------------------------"
dpkg -l | grep -qw apt-transport-https ||
			sudo apt-get install -y apt-transport-https   					# apt-transport-https


# adding the Sublime Text PPA repository key
echo -e "------------------------------------------------------------------"
echo -e "..adding the Sublime Text PPA repository key..."
echo -e "------------------------------------------------------------------"
wget -O - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
echo "deb https://download.sublimetext.com/ apt/stable/" > /etc/apt/sources.list.d/sublime-text.list


echo -e "------------------------------------------------------------------"
echo -e "..updating repository database..."
echo -e "------------------------------------------------------------------"
sudo apt-get update -y


echo -e "------------------------------------------------------------------"
echo -e"..installing Sublime Text..."
echo -e "------------------------------------------------------------------"
sudo apt-get install -y sublime-text


echo -e "------------------------------------------------------------------"
echo -e "|                   Sublime Text installed                        |"
echo -e "------------------------------------------------------------------"
