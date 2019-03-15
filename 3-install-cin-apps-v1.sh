#!/bin/bash
set -e
###################################################################################
# Written to be used on 64 bits computers
# Name:			3-install-cin-apps-v1.sh
# Author:		Romano Woodfolk
# Created:		January 25, 2019
# Modified:		March 14, 2019 (110100100)
# Version:		1.0.0
# Website: 		http://www.romanowoodfolk.com
#---------------------------------------------------------------------------------#
# Comments: This script contains the installation commands for Linux Mint 19.1    #
# “Tessa” Cinnamon Edition an ubuntu based distributions.                         #
#---------------------------------------------------------------------------------#
#
echo -e ""; clear; echo -e ""														# clear Screen
echo -e "------------------------------------------------------------------"
echo -e " Installing Communications, Internet and Networking Applications  "
echo -e "------------------------------------------------------------------"
sudo apt-get update -y

##dpkg -l | grep -qw brave || sudo apt-get install -y brave				# brave
dpkg -l | grep -qw etherape || sudo apt-get install -y etherape 		# etherape
dpkg -l | grep -qw etherape-data ||
			sudo apt-get install -y etherape-data 								# etherape-data
dpkg -l | grep -qw filezilla ||
			sudo apt-get install -y filezilla 								   # filezilla
dpkg -l | grep	-qw firefox || sudo apt-get install -y firefox			# firefox
dpkg -l | grep -qw hexchat || sudo apt-get install -y hexchat 			# hexchat
dpkg -l | grep -qw liferea || sudo apt-get install -y liferea 			# liferea

dpkg -l | grep -qw pidgin || sudo apt-get install -y pidgin 			# pidgin
dpkg -l | grep -qw putty || sudo apt-get install -y putty 				# putty
dpkg -l | grep -qw putty-doc || sudo apt-get install -y putty-doc 	# putty-doc
dpkg -l | grep -qw putty-tools ||
			sudo apt-get install -y putty-tools 								# putty-tools
dpkg -l | grep -qw pterm || sudo apt-get install -y pterm				# pterm
##dpkg -l | grep	-qw slack || sudo apt-get install -y slack				# slack
dpkg -l | grep	-qw slack-desktop ||
			sudo apt-get install -y slack-desktop								# slack-desktop


echo -e ""; clear; echo -e ""														# clear Screen
echo -e "------------------------------------------------------------------"
echo -e "..installing Remmina Remote Desktop tool..."
echo -e "------------------------------------------------------------------"
dpkg -l | grep -qw remmina || sudo apt-get install -y remmina 			# remmina
dpkg -l | grep -qw remmina-common ||
			sudo apt-get install -y remmina-common 							# remmina-common
dpkg -l | grep -qw remmina-plugin-rdp ||
			sudo apt-get install -y remmina-plugin-rdp 						# remmina-plugin-rdp
dpkg -l | grep -qw remmina-plugin-secret ||
			sudo apt-get install -y remmina-plugin-secret 					# remmina-plugin-secret
dpkg -l | grep -qw remmina-plugin-vnc ||
			sudo apt-get install -y remmina-plugin-vnc  						# remmina-plugin-vnc
dpkg -l | grep -qw remmina-plugin-exec ||
			sudo apt-get install -y remmina-plugin-exec 						# remmina-plugin-exec
dpkg -l | grep -qw remmina-plugin-nx ||
			sudo apt-get install -y remmina-plugin-nx  						# remmina-plugin-nx
dpkg -l | grep -qw remmina-plugin-spice ||
			sudo apt-get install -y remmina-plugin-spice 					# remmina-plugin-spice
dpkg -l | grep -qw remmina-plugin-telepathy ||
			sudo apt-get install -y remmina-plugin-telepathy  				# remmina-plugin-telepathy
dpkg -l | grep -qw remmina-plugin-xdmcp ||
			sudo apt-get install -y remmina-plugin-xdmcp 					# remmina-plugin-xdmcp

dpkg -l | grep -qw libfreerdp-plugins-standard ||
			sudo apt-get install -y libfreerdp-plugins-standard 			# libfreerdp-plugins-standard
dpkg -l | grep -qw telegram-desktop ||
			sudo apt-get install -y telegram-desktop 							# telegram-desktop
dpkg -l | grep -qw vinagre || sudo apt-get install -y vinagre 			# vinagre
dpkg -l | grep -qw vnstat || sudo apt-get install -y vnstat 			# vnstat
dpkg -l | grep -qw vnstati || sudo apt-get install -y vnstati 			# vnstati
#dpkg -l | grep -qw wicd || sudo apt-get install -y wicd 				# wicd
##dpkg -l | grep -qw wireshark || sudo apt-get install -y wireshark 	# wireshark
#dpkg -l | grep -qw xchat || sudo apt-get install -y xchat 				# xchat
dpkg -l | grep -qw zenmap || sudo apt-get install -y zenmap			   # zenmap


echo -e "------------------------------------------------------------------"
echo -e "| communications, internet and networking applications installed |"
echo -e "------------------------------------------------------------------"
