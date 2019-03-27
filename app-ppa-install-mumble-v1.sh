set -e
###################################################################################
# Written to be used on 64 bits computers
# Name:			app-ppa-install-mumble-v1.sh
# Author:		Romano Woodfolk
# Created:		January 26, 2019
# Modified:		March 26, 2019 (110100100)
# Version:		1.0.1
# Website: 		http://www.romanowoodfolk.com 
#---------------------------------------------------------------------------------#
# Comments: This script contains the installation commands for Linux Mint 19.1    #
# “Tessa” Cinnamon Edition an ubuntu based distributions.                         #
#---------------------------------------------------------------------------------#
# https://wiki.mumble.info/wiki/Installing_Mumble#Ubuntu
# Ubuntu carries whatever Mumble version was current at the time of the release 
# in the universe repository. 
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
echo -e " Installing Mumble Client and Server..."
echo -e "------------------------------------------------------------------"


echo -e "------------------------------------------------------------------"
echo -e " Updating your system’s software repository index..." 
echo -e "------------------------------------------------------------------"
sudo apt-get update -y


echo -e "------------------------------------------------------------------"
echo -e " Installing mumble client..." 
echo -e "------------------------------------------------------------------"
dpkg -l | grep -qw mumble || sudo apt-get install -y mumble


echo -e "------------------------------------------------------------------"
echo -e " Installing mumble server (Murmur)..." 
echo -e "------------------------------------------------------------------"
dpkg -l | grep -qw mumble-server || sudo apt-get install -y mumble-server


echo -e "------------------------------------------------------------------"
echo -e " Enter the following command to launch mumble: mumble" 
echo -e "------------------------------------------------------------------"
##mumble


echo -e "------------------------------------------------------------------"
echo -e " To remove mumble enter the following command: " 
echo -e " sudo apt-get remove mumble"
echo -e "------------------------------------------------------------------"
##sudo apt-get remove mumble


echo -e "------------------------------------------------------------------"
echo -e " To remove mumble server (Murmur) enter the following command: " 
echo -e " sudo apt-get remove mumble-server"
echo -e "------------------------------------------------------------------"
##sudo apt-get remove mumble-server


echo -e "------------------------------------------------------------------"
echo -e " To remove Mumble along with the configurations, enter the "
echo -e " following command: sudo apt-get purge mumble" 
echo -e "------------------------------------------------------------------"
##sudo apt-get purge mumble


echo -e "------------------------------------------------------------------"
echo -e " To remove mumble server (Murmur) along with the configurations,  "
echo -e " enter the following command: sudo apt-get purge mumble-server" 
echo -e "------------------------------------------------------------------"
##sudo apt-get purge mumble-server


#############################################################################
# Mumble Client and Murmur Server via PPA
#echo -e "------------------------------------------------------------------"
#echo -e " Adding Mumble PPA "
#echo -e "------------------------------------------------------------------"
#sudo add-apt-repository ppa:mumble/release
#
#
#sudo apt-get update
#
#echo -e "------------------------------------------------------------------"
#echo -e " To install the client you can use:"
#echo -e "------------------------------------------------------------------"
#dpkg -l | grep -qw mumble || sudo apt-get install -y mumble
#
#echo -e "------------------------------------------------------------------"
#echo -e " To install and configure the server use:"
#echo -e "------------------------------------------------------------------"
#dpkg -l | grep -qw mumble-server || sudo apt-get install -y mumble-server
#sudo dpkg-reconfigure mumble-server
#############################################################################

echo -e "------------------------------------------------------------------"
echo -e "|             Mumble Server and Client Installed                 |"
echo -e "------------------------------------------------------------------"
