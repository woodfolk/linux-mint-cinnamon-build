set -e
###################################################################################
# Written to be used on 64 bits computers
# Name:			app-ppa-install-hardcodefixer-v1.sh
# Author:		Romano Woodfolk
# Created:		February 26, 2019
# Modified:		March 16, 2019 (110100100)
# Version:		1.0.1
# Website:	 	http://www.romanowoodfolk.com 
#---------------------------------------------------------------------------------#
# Comments: This script contains the installation commands for Linux Mint 19.1  
# “Tessa” Cinnamon Edition an ubuntu based distributions.
#---------------------------------------------------------------------------------#
# http://www.erikdubois.be															# Erik Dubois
#
echo -e "------------------------------------------------------------------"
echo -e " Creating Log files..."
echo -e "------------------------------------------------------------------"
# Defining Script Variables 
	SCRPTNAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")" 
	SCRPTNOW=`date +%Y%m%d%H%M%S`													# Current Date & Time Suffix
	SCRPTLOGFILE="$SCRPTNAME"_instlog_"$SCRPTNOW".log						# Script Log File
	SCRPTERRORFILE="$SCRPTNAME"_errlog_"$SCRPTNOW".log						# Error Log File
# Creating Log Files
	touch $SCRPTERRORFILE
	exec 2> $SCRPTERRORFILE
echo -e "------------------------------------------------------------------"
echo -e " Log files created..."
echo -e "------------------------------------------------------------------"

echo -e ""; clear; echo -e ""														# clear Screen
echo -e "------------------------------------------------------------------"
echo -e "..installing hardcodefixer...                                     "
echo -e "------------------------------------------------------------------"

# if there is already a folder, delete or else do nothing
echo -e "------------------------------------------------------------------"
echo -e " This script will install itself in the /tmp/hardcode-fixer folder."
echo -e " It will run from there."
echo -e " Upon next boot the tmp folder will be empty again."
echo -e "------------------------------------------------------------------"

[ -d /tmp/hardcode-fixer ] && rm -rf "/tmp/hardcode-fixer" || echo -e ""

echo -e "------------------------------------------------------------------"
echo -e " Checking if git is installed"
echo -e " Install git for an easy installation"
echo -e "------------------------------------------------------------------"

	# G I T

	# check if git is installed
	if which git > /dev/null; then
		echo -e "------------------------------------------------------------------"
		echo -e " git was installed. Proceding..."
		echo -e "------------------------------------------------------------------"

	else

		echo -e "------------------------------------------------------------------"
		echo -e " installing git for this script to work"
		echo -e "------------------------------------------------------------------"

	  	sudo apt-get install -y git 
		  	
	fi

git clone https://github.com/Foggalong/hardcode-fixer /tmp/hardcode-fixer

echo -e "------------------------------------------------------------------"
echo -e " Checking if curl is installed"
echo -e " Install curl for an easy installation"
echo -e "------------------------------------------------------------------"

	# curl

	# check if curl is installed
	if which curl > /dev/null; then
		echo -e "------------------------------------------------------------------"
		echo -e " curl was installed. Proceding..."
		echo -e "------------------------------------------------------------------"

	else

		echo -e "------------------------------------------------------------------"
		echo -e " installing curl for this script to work"
		echo -e "------------------------------------------------------------------"

	  	sudo apt-get install -y curl 
		  	
	fi

echo -e "------------------------------------------------------------------"
echo -e "Checking and changing all hardcoded icons"
echo -e "------------------------------------------------------------------"

sudo /tmp/hardcode-fixer/fix.sh

rm -rf /tmp/hardcode-fixer

echo -e "------------------------------------------------------------------"
echo -e "|                    Hardcode fixer done                         |"
echo -e "------------------------------------------------------------------"
