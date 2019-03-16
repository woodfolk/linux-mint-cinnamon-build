#!/bin/bash
set -e
###################################################################################
# Written to be used on 64 bits computers
# Name:			7-install-ppa-apps-v1.sh
# Author:		Romano Woodfolk
# Created:		January 26, 2019
# Modified:		March 16, 2019 (110100100)
# Version:		1.0.1
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
echo -e ""
echo -e " PPA-APP-INSTALL script calling app-ppa-install-atom-v*.sh"
sh app-ppa-install-atom-v*.sh


#---------------------------------------------------------------------------------#
#	Installing Audio-Recorder                                                      #
#---------------------------------------------------------------------------------#
echo -e ""
echo -e " PPA-APP-INSTALL script calling app-ppa-install-audiorecorder-v*.sh"
sh app-ppa-install-audiorecorder-v*.sh


#---------------------------------------------------------------------------------#
#	Installing Brackets                                                            #
#---------------------------------------------------------------------------------#
echo -e ""
echo -e " PPA-APP-INSTALL script calling app-ppa-install-brackets-v*.sh"
sh app-ppa-install-brackets-v*.sh


#---------------------------------------------------------------------------------#
#	Installing Brave Web Browser                                                   #
#---------------------------------------------------------------------------------#
echo -e ""
echo -e " PPA-APP-INSTALL script calling app-ppa-install-brave-v1.sh"
sh app-ppa-install-brave-v1.sh


#---------------------------------------------------------------------------------#
#	Install Chrome Browser                                                         #
#---------------------------------------------------------------------------------#
echo -e ""
echo -e " PPA-APP-INSTALL script calling app-ppa-install-chrome-v*.sh"
sh app-ppa-install-chrome-v*.sh


#---------------------------------------------------------------------------------#
#	Installing Cinelerra                                                           #
#---------------------------------------------------------------------------------#
##echo -e ""
##echo -e " PPA-APP-INSTALL script calling app-ppa-install-cinelerra-v*.sh"
##sh app-ppa-install-cinelerra-v*.sh


#---------------------------------------------------------------------------------#
#	Installing Microsoft Visual Studio Code                                        #
#---------------------------------------------------------------------------------#
##echo -e ""
##echo -e " PPA-APP-INSTALL script calling app-ppa-install-code-v*.sh"
##sh app-ppa-install-code-v*.sh


#---------------------------------------------------------------------------------#
#	Installing Docker                                                              #
#---------------------------------------------------------------------------------#
echo -e ""
echo -e " PPA-APP-INSTALL script calling app-ppa-install-docker-v*.sh"
sh app-ppa-install-docker-v*.sh


#---------------------------------------------------------------------------------#
#	Install Etcher                                                                 #
#---------------------------------------------------------------------------------#
echo -e ""
echo -e " PPA-APP-INSTALL script calling app-ppa-install-etcher-v*.sh"
sh app-ppa-install-etcher-v*.sh


#---------------------------------------------------------------------------------#
#	Installing Glances                                                             #
#---------------------------------------------------------------------------------#
echo -e ""
echo -e " PPA-APP-INSTALL script calling app-ppa-install-glances-v*.sh"
sh app-ppa-install-glances-v*.sh


#---------------------------------------------------------------------------------#
#	Installing Kodi                                                                 #
#---------------------------------------------------------------------------------#
echo -e ""
echo -e " PPA-APP-INSTALL script calling app-ppa-install-kodi-v*.sh"
sh app-ppa-install-kodi-v*.sh


#---------------------------------------------------------------------------------#
#	Installing KVM                                                                 #
#---------------------------------------------------------------------------------#
echo -e ""
echo -e " PPA-APP-INSTALL script calling app-ppa-install-kvm-v*.sh"
sh app-ppa-install-kvm-v*.sh


#---------------------------------------------------------------------------------#
#	Installing Laptop Mode Tools                                                   #
#---------------------------------------------------------------------------------#
##echo -e ""
##echo -e " PPA-APP-INSTALL script calling app-ppa-install-lmt-v*.sh"
##sh app-ppa-install-lmt-v*.sh


#---------------------------------------------------------------------------------#
#	Installing Mumble Client and Server                                            #
#---------------------------------------------------------------------------------#
##echo -e ""
##echo -e " PPA-APP-INSTALL script calling app-ppa-install-mumble-v*.sh"
##sh app-ppa-install-mumble-v*.sh


#---------------------------------------------------------------------------------#
#	Installing Neofetch                                                            #
#---------------------------------------------------------------------------------#
echo -e ""
echo -e " PPA-APP-INSTALL script calling app-ppa-install-neofetch-v*.sh"
sh app-ppa-install-neofetch-v*.sh


#---------------------------------------------------------------------------------#
#	Installing Notepad Plus Plus                                                   #
#---------------------------------------------------------------------------------#
echo -e ""
echo -e " PPA-APP-INSTALL script calling app-ppa-install-notepadqq-v*.sh"
sh app-ppa-install-notepadqq-v*.sh


#---------------------------------------------------------------------------------#
#	Installing OceanAudio Editor                                                   #
#---------------------------------------------------------------------------------#
echo -e ""
echo -e " PPA-APP-INSTALL script calling app-ppa-install-oceanaudio-v*.sh"
sh app-ppa-install-oceanaudio-v*.sh


#---------------------------------------------------------------------------------#
#	Installing Peek                                                                #
#---------------------------------------------------------------------------------#
##echo -e ""
##echo -e " PPA-APP-INSTALL script calling app-ppa-install-peek-v*.sh"
##sh app-ppa-install-peek-v*.sh


#---------------------------------------------------------------------------------#
#	Installing PIA VPN Network Manager                                             #
#---------------------------------------------------------------------------------#
#echo -e ""
#echo -e " PPA-APP-INSTALL script calling app-ppa-install-pia-vpn-v*.sh"
#sh app-ppa-install-pia-vpn-v*.sh


#---------------------------------------------------------------------------------#
#	Installing Pithos                                                              #
#---------------------------------------------------------------------------------#
echo -e ""
echo -e " PPA-APP-INSTALL script calling app-ppa-install-pithos-v*.sh"
sh app-ppa-install-pithos-v*.sh


#---------------------------------------------------------------------------------#
#	Installing Microsoft PowerShell                                                #
#---------------------------------------------------------------------------------#
#echo -e ""
#echo -e " PPA-APP-INSTALL script calling app-ppa-install-powershell-v*.sh"
##sh app-ppa-install-powershell-v*.sh


#---------------------------------------------------------------------------------#
#	Installing Python                                                              #
#---------------------------------------------------------------------------------#
echo -e ""
echo -e " PPA-APP-INSTALL script calling app-ppa-install-python-v*.sh"
sh app-ppa-install-python-v*.sh


#---------------------------------------------------------------------------------#
#	Installing Redshift                                                            #
#---------------------------------------------------------------------------------#
echo -e ""
echo -e " PPA-APP-INSTALL script calling app-ppa-install-redshift-v*.sh"
sh app-ppa-install-redshift-v*.sh


#---------------------------------------------------------------------------------#
#	Installing SABnzb                                                              #
#---------------------------------------------------------------------------------#
echo -e ""
echo -e " PPA-APP-INSTALL script calling app-ppa-install-sabnzbd-v1.sh"
sh app-ppa-install-sabnzbd-v1.sh


#---------------------------------------------------------------------------------#
#	Installing Screenkey                                                           #
#---------------------------------------------------------------------------------#
#echo -e ""
#echo -e " PPA-APP-INSTALL script calling app-ppa-install-screenkey-v*.sh"
#sh app-ppa-install-screenkey-v*.sh


#---------------------------------------------------------------------------------#
#	Installing Simplenote                                                          #
#---------------------------------------------------------------------------------#
echo -e ""
echo -e " PPA-APP-INSTALL script calling app-ppa-install-simplenote-v*.sh"
sh app-ppa-install-simplenote-v*.sh


#---------------------------------------------------------------------------------#
#	Installing Simplescreenrecorder                                                #
#---------------------------------------------------------------------------------#
echo -e ""
echo -e " PPA-APP-INSTALL script calling app-ppa-install-simplescreenrecorder-v*.sh"
sh app-ppa-install-simplescreenrecorder-v*.sh


#---------------------------------------------------------------------------------#
#	Installing Skype                                                               #
#---------------------------------------------------------------------------------#
##echo -e ""
##echo -e " PPA-APP-INSTALL script calling app-ppa-install-skype-v*.sh"
##sh app-ppa-install-skype-v*.sh


#---------------------------------------------------------------------------------#
#	Installing Slack                                                               #
#---------------------------------------------------------------------------------#
echo -e ""
echo -e " PPA-APP-INSTALL script calling app-ppa-install-slack-v*.sh"
sh app-ppa-install-slack-v*.sh


#---------------------------------------------------------------------------------#
#	Installing Spotify                                                             #
#---------------------------------------------------------------------------------#
##echo -e ""
##echo -e " PPA-APP-INSTALL script calling app-ppa-install-spotify-v*.sh"
##sh app-ppa-install-spotify-v*.sh


#---------------------------------------------------------------------------------#
#	Installing Stacer                                                              #
#---------------------------------------------------------------------------------#
echo -e ""
echo -e " PPA-APP-INSTALL script calling app-ppa-install-stacer-v*.sh"
sh app-ppa-install-stacer-v*.sh


#---------------------------------------------------------------------------------#
#	Installing Sublime Text                                                        #
#---------------------------------------------------------------------------------#
##echo -e ""
##echo -e " PPA-APP-INSTALL script calling app-ppa-install-sublime-v*.sh"
##sh app-ppa-install-sublime-v*.sh


#---------------------------------------------------------------------------------#
#	Installing Synology Assistant                                                  #
#---------------------------------------------------------------------------------#
echo -e ""
echo -e " PPA-APP-INSTALL script calling app-ppa-install-synology-v*.sh"
sh app-ppa-install-synology-v*.sh


#---------------------------------------------------------------------------------#
#	Installing Teamviewer                                                          #
#---------------------------------------------------------------------------------#
echo -e ""
echo -e " PPA-APP-INSTALL script calling app-ppa-install-teamviewer-v*.sh"
sh app-ppa-install-teamviewer-v*.sh


#---------------------------------------------------------------------------------#
#	Installing Telegram                                                            #
#---------------------------------------------------------------------------------#
echo -e ""
echo -e " PPA-APP-INSTALL script calling app-ppa-install-telegram-v*.sh"
sh app-ppa-install-telegram-v*.sh


#---------------------------------------------------------------------------------#
#	Installing TLP                                                                 #
#---------------------------------------------------------------------------------#
##echo -e ""
##echo -e " PPA-APP-INSTALL script calling app-ppa-install-tlp-v*.sh"
##sh app-ppa-install-tlp-v*.sh


#---------------------------------------------------------------------------------#
#	Installing Unetbootin                                                          #
#---------------------------------------------------------------------------------#
echo -e ""
echo -e " PPA-APP-INSTALL script calling app-ppa-install-unetbootin-v*.sh"
sh app-ppa-install-unetbootin-v*.sh


#---------------------------------------------------------------------------------#
#	Installing VirtualBox                                                          #
#---------------------------------------------------------------------------------#
##echo -e ""
##echo -e " PPA-APP-INSTALL script calling app-ppa-install-virtualbox-v*.sh"
##sh app-ppa-install-virtualbox-v*.sh # $USERNAME ## $USER


#---------------------------------------------------------------------------------#
#	Installing Vivaldi Snapshot                                                    #
#---------------------------------------------------------------------------------#
##echo -e ""
##echo -e " PPA-APP-INSTALL script calling app-ppa-install-vivaldi-snapshot-v*.sh"
##sh app-ppa-install-vivaldi-snapshot-v*.sh


#---------------------------------------------------------------------------------#
#	Installing Vivaldi Stable                                                      #
#---------------------------------------------------------------------------------#
##echo -e ""
##echo -e " PPA-APP-INSTALL script calling app-ppa-install-vivaldi-stable-v*.sh"
##sh app-ppa-install-vivaldi-stable-v*.sh


#---------------------------------------------------------------------------------#
#	Installing Vivaldi                                                             #
#---------------------------------------------------------------------------------#
echo -e ""
echo -e " PPA-APP-INSTALL script calling app-ppa-install-vivaldi-v*.sh"
sh app-ppa-install-vivaldi-v*.sh


#---------------------------------------------------------------------------------#
#	Installing zoom                                                                #
#---------------------------------------------------------------------------------#
echo -e ""
echo -e " PPA-APP-INSTALL script calling app-ppa-install-zoom-v*.sh"
sh app-ppa-install-zoom-v*.sh


#---------------------------------------------------------------------------------#
#	Installing zsh                                                                 #
#---------------------------------------------------------------------------------#
echo -e ""
echo -e " PPA-APP-INSTALL script calling app-ppa-install-zsh-v*.sh"
sh app-ppa-install-zsh-v*.sh


#---------------------------------------------------------------------------------#
#	Installing Hardcodefixer                                                       #
#---------------------------------------------------------------------------------#
echo -e ""
echo -e " PPA-APP-INSTALL script calling app-ppa-install-hardcodefixer-v*.sh"
sh app-ppa-install-hardcodefixer-v*.sh


echo -e  "------------------------------------------------------------------"
echo -e  "|                   ppa applications installed                   |"
echo -e  "------------------------------------------------------------------"

###################################################################################
###################################################################################
#---------------------------------------------------------------------------------#
#	Installing                                                                     #
#---------------------------------------------------------------------------------#
#echo -e ""
#echo -e " PPA-APP-INSTALL script calling XXXXX"
#sh app-ppa-install--v*.sh
#
#
###################################################################################
###################################################################################
