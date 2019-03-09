set -e
###################################################################################
# Written to be used on 64 bits computers
# Name:			app-ppa-install-v1.sh
# Author:		Romano Woodfolk
# Created:		January 26, 2019
# Modified:		March 01, 2019 (110100100)
# Version:		1.0.0
# Website:	 	http://www.romanowoodfolk.com
#---------------------------------------------------------------------------------#
# Comments: This script contains the installation commands for Linux Mint 19.1    #
# “Tessa” Cinnamon Edition an ubuntu based distributions.                         #
#---------------------------------------------------------------------------------#
# https://nicolargo.github.io/glances/
# https://github.com/nicolargo/glances/blob/master/README.rst

echo -e ""; clear; echo -e ""														# clear Screen
echo -e "------------------------------------------------------------------"
echo -e "..installing glances..."
echo -  "------------------------------------------------------------------"


# curl -L https://bit.ly/glances | /bin/bash

wget -O- https://bit.ly/glances | /bin/bash

pip install glances


echo -e  "------------------------------------------------------------------"
echo -e  "|                     glances installed                          |"
echo -e  "------------------------------------------------------------------"
