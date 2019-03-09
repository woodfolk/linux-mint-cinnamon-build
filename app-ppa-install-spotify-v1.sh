#!/bin/bash
set -e
###################################################################################
# Written to be used on 64 bits computers
# Name:			app-ppa-install-spotify-v1.sh
# Author:		Romano Woodfolk
# Created:		February 18, 2019
# Modified:		March 09, 2019 (110100100)
# Version:		1.0.0
# Website 	: 	http://www.romanowoodfolk.com
#---------------------------------------------------------------------------------#
# Comments: This script contains the installation commands for Linux Mint 19.1    #
# “Tessa” Cinnamon Edition an ubuntu based distributions.                         #
#---------------------------------------------------------------------------------#
#
echo -e ""; clear; echo -e ""														# clear Screen
echo -e "------------------------------------------------------------------"
echo -e "..installing Spotify...                                           "
echo -e "------------------------------------------------------------------"


# 1. Add the Spotify repository signing keys to be able to verify downloaded packages
echo -e "------------------------------------------------------------------"
echo -e " Adding the Spotify repository signing keys...                    "
echo -e "------------------------------------------------------------------"
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 0DF731E45CE24F27EEEB1450EFDC8610341D9410


# 2. Add the Spotify repository
echo -e "------------------------------------------------------------------"
echo -e " Add the Spotify repository...                                    "
echo -e "------------------------------------------------------------------"
echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list


# 3. Update list of available packages
echo -e "------------------------------------------------------------------"
echo -e " Updating packages list...                                        "
echo -e "------------------------------------------------------------------"
sudo apt-get update -y


# 4. Install Spotify
echo -e "------------------------------------------------------------------"
echo -e " Installing Spotify...                                            "
echo -e "------------------------------------------------------------------"
sudo apt-get install -y spotify-client


echo -e "------------------------------------------------------------------"
echo -e "|                     Spotify installed                          |"
echo -e "------------------------------------------------------------------"
