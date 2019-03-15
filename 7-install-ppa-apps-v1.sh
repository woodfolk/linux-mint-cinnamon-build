#!/bin/bash
set -e
###################################################################################
# Written to be used on 64 bits computers
# Name:			7-install-ppa-apps-v1.sh
# Author:		Romano Woodfolk
# Created:		January 26, 2019
# Modified:		March 14, 2019 (110100100)
# Version:		1.0.0
# Website:  	http://www.romanowoodfolk.com
#---------------------------------------------------------------------------------#
# Comments: This script contains the installation commands for Linux Mint 19.1    #
# “Tessa” Cinnamon Edition an ubuntu based distributions.                         #
#---------------------------------------------------------------------------------#
#
# Comment out any package that you wish not to install. Uncomment those packages
# you wish to install. These are the packages that I have commented out:
#		* Laptop Mode Tools
#		* Mumble
#		* Peek	
#		* Redshift					(Installed Elsewhere)
#		* Screenkey	
# 		* Simplescreenrecorder	(Installed Elsewhere)
# 		* Spotify	
# 		* Sublime Text
#		* TLP
#		* Vivaldi Snapshot		(Installed Elsewhere)
#		* Vivaldi Stable 			(Installed Elsewhere)
#
echo -e ""; clear; echo -e ""														# clear Screen
echo -e "------------------------------------------------------------------"
echo -e "..installing PPAs and PPA installs...                             "
echo -e "------------------------------------------------------------------"


#---------------------------------------------------------------------------------#
#	Installing Atom                                                                #
#---------------------------------------------------------------------------------#
sh app-ppa-install-atom-v*.sh


#---------------------------------------------------------------------------------#
#	Installing Audio-Recorder                                                      #
#---------------------------------------------------------------------------------#
sh app-ppa-install-audiorecorder-v*.sh


#---------------------------------------------------------------------------------#
#	Installing Brackets                                                            #
#---------------------------------------------------------------------------------#
sh app-ppa-install-brackets-v*.sh


#---------------------------------------------------------------------------------#
#	Installing Brave Web Browser                                                   #
#---------------------------------------------------------------------------------#
sh app-ppa-install-brave-v1.sh


#---------------------------------------------------------------------------------#
#	Install Chrome Browser                                                         #
#---------------------------------------------------------------------------------#
sh app-ppa-install-chrome-v*.sh


#---------------------------------------------------------------------------------#
#	Installing Cinelerra                                                           #
#---------------------------------------------------------------------------------#
##sh app-ppa-install-cinelerra-v*.sh


#---------------------------------------------------------------------------------#
#	Installing Microsoft Visual Studio Code                                        #
#---------------------------------------------------------------------------------#
##sh app-ppa-install-code-v*.sh


#---------------------------------------------------------------------------------#
#	Installing Docker                                                              #
#---------------------------------------------------------------------------------#
sh app-ppa-install-docker-v*.sh


#---------------------------------------------------------------------------------#
#	Install Etcher                                                                 #
#---------------------------------------------------------------------------------#
sh app-ppa-install-etcher-v*.sh


#---------------------------------------------------------------------------------#
#	Installing Glances                                                             #
#---------------------------------------------------------------------------------#
sh app-ppa-install-glances-v*.sh


#---------------------------------------------------------------------------------#
#	Installing Kodi                                                                 #
#---------------------------------------------------------------------------------#
sh app-ppa-install-kodi-v*.sh


#---------------------------------------------------------------------------------#
#	Installing KVM                                                                 #
#---------------------------------------------------------------------------------#
sh app-ppa-install-kvm-v*.sh


#---------------------------------------------------------------------------------#
#	Installing Laptop Mode Tools                                                   #
#---------------------------------------------------------------------------------#
##sh app-ppa-install-lmt-v*.sh


#---------------------------------------------------------------------------------#
#	Installing Mumble Client and Server                                            #
#---------------------------------------------------------------------------------#
##sh app-ppa-install-mumble-v*.sh


#---------------------------------------------------------------------------------#
#	Installing Neofetch                                                            #
#---------------------------------------------------------------------------------#
sh app-ppa-install-neofetch-v*.sh


#---------------------------------------------------------------------------------#
#	Installing Notepad Plus Plus                                                   #
#---------------------------------------------------------------------------------#
sh app-ppa-install-notepadqq-v*.sh


#---------------------------------------------------------------------------------#
#	Installing OceanAudio Editor                                                   #
#---------------------------------------------------------------------------------#
sh app-ppa-install-oceanaudio-v*.sh


#---------------------------------------------------------------------------------#
#	Installing Peek                                                                #
#---------------------------------------------------------------------------------#
##sh app-ppa-install-peek-v*.sh


#---------------------------------------------------------------------------------#
#	Installing PIA VPN Network Manager                                             #
#---------------------------------------------------------------------------------#
#sh app-ppa-install-pia-vpn-v*.sh


#---------------------------------------------------------------------------------#
#	Installing Pithos                                                              #
#---------------------------------------------------------------------------------#
sh app-ppa-install-pithos-v*.sh


#---------------------------------------------------------------------------------#
#	Installing Microsoft PowerShell                                                #
#---------------------------------------------------------------------------------#
##sh app-ppa-install-powershell-v*.sh


#---------------------------------------------------------------------------------#
#	Installing Python                                                              #
#---------------------------------------------------------------------------------#
sh app-ppa-install-python-v*.sh


#---------------------------------------------------------------------------------#
#	Installing Redshift                                                            #
#---------------------------------------------------------------------------------#
sh app-ppa-install-redshift-v*.sh


#---------------------------------------------------------------------------------#
#	Installing SABnzb                                                              #
#---------------------------------------------------------------------------------#
sh app-ppa-install-sabnzbd-v1.sh


#---------------------------------------------------------------------------------#
#	Installing Screenkey                                                           #
#---------------------------------------------------------------------------------#
#sh app-ppa-install-screenkey-v*.sh


#---------------------------------------------------------------------------------#
#	Installing Simplenote                                                          #
#---------------------------------------------------------------------------------#
sh app-ppa-install-simplenote-v*.sh


#---------------------------------------------------------------------------------#
#	Installing Simplescreenrecorder                                                #
#---------------------------------------------------------------------------------#
sh app-ppa-install-simplescreenrecorder-v*.sh


#---------------------------------------------------------------------------------#
#	Installing Skype                                                               #
#---------------------------------------------------------------------------------#
##sh app-ppa-install-skype-v*.sh


#---------------------------------------------------------------------------------#
#	Installing Slack                                                               #
#---------------------------------------------------------------------------------#
sh app-ppa-install-slack-v*.sh


#---------------------------------------------------------------------------------#
#	Installing Spotify                                                             #
#---------------------------------------------------------------------------------#
##sh app-ppa-install-spotify-v*.sh


#---------------------------------------------------------------------------------#
#	Installing Stacer                                                              #
#---------------------------------------------------------------------------------#
sh app-ppa-install-stacer-v*.sh


#---------------------------------------------------------------------------------#
#	Installing Sublime Text                                                        #
#---------------------------------------------------------------------------------#
##sh app-ppa-install-sublime-v*.sh


#---------------------------------------------------------------------------------#
#	Installing Synology Assistant                                                  #
#---------------------------------------------------------------------------------#
sh app-ppa-install-synology-v*.sh


#---------------------------------------------------------------------------------#
#	Installing Teamviewer                                                          #
#---------------------------------------------------------------------------------#
sh app-ppa-install-teamviewer-v*.sh


#---------------------------------------------------------------------------------#
#	Installing Telegram                                                            #
#---------------------------------------------------------------------------------#
sh app-ppa-install-telegram-v*.sh


#---------------------------------------------------------------------------------#
#	Installing TLP                                                                 #
#---------------------------------------------------------------------------------#
##sh app-ppa-install-tlp-v*.sh


#---------------------------------------------------------------------------------#
#	Installing Unetbootin                                                          #
#---------------------------------------------------------------------------------#
sh app-ppa-install-unetbootin-v*.sh


#---------------------------------------------------------------------------------#
#	Installing VirtualBox                                                          #
#---------------------------------------------------------------------------------#
##sh app-ppa-install-virtualbox-v*.sh # $USERNAME ## $USER


#---------------------------------------------------------------------------------#
#	Installing Vivaldi Snapshot                                                    #
#---------------------------------------------------------------------------------#
##sh app-ppa-install-vivaldi-snapshot-v*.sh


#---------------------------------------------------------------------------------#
#	Installing Vivaldi Stable                                                      #
#---------------------------------------------------------------------------------#
##sh app-ppa-install-vivaldi-stable-v*.sh


#---------------------------------------------------------------------------------#
#	Installing Vivaldi                                                             #
#---------------------------------------------------------------------------------#
sh app-ppa-install-vivaldi-v*.sh


#---------------------------------------------------------------------------------#
#	Installing zoom                                                                #
#---------------------------------------------------------------------------------#
sh app-ppa-install-zoom-v*.sh


#---------------------------------------------------------------------------------#
#	Installing zsh                                                                 #
#---------------------------------------------------------------------------------#
sh app-ppa-install-zsh-v*.sh


#---------------------------------------------------------------------------------#
#	Installing Hardcodefixer                                                       #
#---------------------------------------------------------------------------------#
sh app-ppa-install-hardcodefixer-v*.sh


echo -e  "------------------------------------------------------------------"
echo -e  "|                   ppa applications installed                   |"
echo -e  "------------------------------------------------------------------"

###################################################################################
###################################################################################
#---------------------------------------------------------------------------------#
#	Installing                                                                     #
#---------------------------------------------------------------------------------#
#sh app-ppa-install--v*.sh
#
#
###################################################################################
###################################################################################
