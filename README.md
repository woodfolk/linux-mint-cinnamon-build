# Linux Mint 19.1 Cinnamon Build

This is my Link Mint Cinnamon Build Script. I wrote this script strictly for me, for the sole purpose of rebuilding my system just in case. Just in case I receive a new computer, recycled computer or just because, can rebuild my system to my specifications via the use of this script. I've pulled ideas into this script via the following people including my finishbuild script...

**Erik Dubois** - https://github.com/erikdubois/Ultimate-Linux-Mint-19-Cinnamon
**DasGeek** - https://github.com/dasgeekchannel/AutoInstallBashScripts
**Joe Collins** (EzeeLinux) - https://github.com/EzeeLinux
**Romano Woodfolk** - https://github.com/woodfolk/linux-mint-cinnamon-build

This scipt is free to use and to modify and as I have been warned, you are being warned. You run this script at your own risk. I take no responsibility to an harm to you system or data. Read through the script and edit way you want or don't want installed. I have to admit although there are ton of applications being installed, I practically live in a browser and should be running a chromebook.

![Imgur](https://i.imgur.com/nbSQcVX.png?1)

## Download this github

You can run any of these scripts by downloading the zip file from github. Go to the download folder and right-click to **Extract here**.
Go inside the folder and right-click <b>in a blank space</b> to go to the terminal. Now your terminal is opened in this extracted folder.

Or you can use the terminal and the git command

    sudo apt install git
    git clone https://github.com/woodfolk/linux-mint-cinnamon-build

## Update your system

First update/upgrade your system with mintupdate icon at bottom right or by running the following commands:

    sudo apt update
    sudo apt upgrade -y

## Software installation

The installation scripts used to install software will be installed via the terminal.

    master-install.sh                           # Master Install Script
    
    0-prep-configurations-v*.sh                 # Pre-Configuration Script
    1-prep-configurations-v*.sh                 # Pre-Configuration Script
    
    1-install-core-utilities-v*.sh              # Core Utilities
    2-install-av-apps-v*.sh                     # Audio & Video Applications
    3-install-cin-apps-v*.sh                    # Communications, Internet & Networking
    4-install-offprod-apps-v*.sh                # Office and Productivity 
    5-install-graphics-apps-v*.sh               # Graphics and Photography
    6-install-misc-apps-v*.sh                   # Miscellaneous Applications
    7-install-ppa-apps-v*.sh                    # Personal Package Archive Installs
    8-install-themes-icons-v*.sh                # Themes and Icons
    9-install-snap-packages-v*.sh				# SnapCraft and Snap Packages
    0-installation-summary-v*-sh                # Summary
    
    
    app-configurations-v1.sh                    # Post-Configuration Script

Do not forget to type "./" in front of the name.

Some of scripts call other scripts in the folder and should be keep together in the same folder.

PPA, GIT and Downloaded Installs

    app-ppa-install-atom-v*.sh                  # Atom
    app-ppa-install-audiorecorder-v*.sh         # Audio-Recorder
    app-ppa-install-brackets-v*.sh              # Brackets
    app-ppa-install-chrome-v*.sh                # Chrome Web Browser
    app-ppa-install-cinelerra-v*.sh             # Cinelerra
    app-ppa-install-code-v*.sh                  # Microsoft Visual Studio Code
    app-ppa-install-docker-v*.sh                # Docker
    app-ppa-install-etcher-v*.sh                # Etcher
    app-ppa-install-glances-v*.sh               # Glances
    app-ppa-install-hardcodefixer-v*.sh         # Hardcodefixer
    app-ppa-install-kodi-v*.sh 					# Kodi
    app-ppa-install-kvm-v*.sh                   # KVM
    app-ppa-install-lmt-v*.sh					# Laptop Mode Tools
    app-ppa-install-mumbler-v*.sh               # Mumbler
    app-ppa-install-neofetch-v*.sh              # Neofetch
    app-ppa-install-oceanaudio-v*.sh            # Ocean Audio
    app-ppa-install-peek-v*.sh                  # Peek
    app-ppa-install-pia-v*.sh                   # PIA
    app-ppa-install-pithos-v*.sh 				# Pithos
    app-ppa-install-powershell-v*.sh            # Powershell
    app-ppa-install-python-v*.sh                # Python
    app-ppa-install-redshift-v*.sh              # Redshift
    app-ppa-install-sabnzb-v*.sh                # sabNZB
    app-ppa-install-screenkey-v*.sh             # Screenkey
    app-ppa-install-simplenote-v*.sh            # Simplenote
    app-ppa-install-simplescreenrecorder-v*.sh  # Simplescreenrecorder
    app-ppa-install-skype-v*.sh                 # Skype
    app-ppa-install-spotify-v*.sh               # Spotify
    app-ppa-install-stacer-v*.sh                # Stacer
    app-ppa-install-sublime-v*.sh               # Sublime Text Editor
    app-ppa-install-synology-v*.sh              # Synology
    app-ppa-install-teamviewer-v*.sh            # Teamviewer
    app-ppa-install-tlp-v*.sh 					# TLP
    app-ppa-install-virtualbox-v*.sh            # Virtualbox
    app-ppa-install-vivaldi-snapshot-v*.sh      # Vivaldi-Snapshot
    app-ppa-install-vivaldi-stable-v*.sh        # Vivaldi-Stable
    app-ppa-install-vivaldi-v*.sh               # Vivaldi Web Browser(s)
    app-ppa-install-zoom-v*.sh                  # Zoom
    app-ppa-install-zsh-v1.sh                   # zsh
    ...

    app-snap-install-packages-v1.sh             # SnapCraft and SNAP Packages

Themes and Icons:
    install-arc-flatabulous-theme-v1.sh
    install-conky-aureola-v1.sh
    install-gtk-arc-theme-v1.sh
    install-icons-sardi-extra-v1.sh
    install-icons-sardi-v1.sh
    install-icons-surfn-v1.sh
    install-plank-themes-v1.sh
    install-theme-arc-colora-collection-3.4.v1.sh
    install-theme-arc-colora-collection-3.6.v1.sh
    install-theme-mint-y-colora-collection-3.6-v1.sh
    ...

Other Files:
    bashrc                                      # ParrotOS .bashrc file Terminal
    ...

Below are discriptions about the Icons and Themes scripts forked from Erik DuBois Ultimate-Linux-Mint-19-Cinnamon script https://github.com/erikdubois/Ultimate-Linux-Mint-19-Cinnamon

## Arc Colora themes have been installed

install-theme-arc-colora-collection-3.6.v1.sh

Using the scripts at https://github.com/erikdubois/Arc-Theme-Colora we can change the standard blue colour from Arc to any colour we like.

Check first at https://github.com/erikdubois/Arc-Theme-Colora-Collection if your colour has been created already.

We can install all the created themes with this script

    theme-arc-colora-collection-3.6-vx.sh

The version of cinnamon is important to have a nice theme or not.
Linux Mint 18.3 = cinnamon version 3.6.6

    cinnamon --version

## Mint-Y themes have been installed

install-theme-mint-y-colora-collection-3.6-v1.sh

Using the scripts at https://github.com/erikdubois/Mint-Y-Colora-Theme we can change the standard green colour from Mint-Y to any colour we like.

Check first at https://github.com/erikdubois/Mint-Y-Colora-Theme-Collection if your colour has been created already.

We can install all the created themes with this script

    theme-mint-y-colora-collection-3.6-vx.sh

The version of cinnamon is important to have a nice theme or not.
Linux Mint 18.3 = cinnamon version 3.6.6

    cinnamon --version

## Sardi icons have been installed

install-icons-sardi-v1.sh

Sardi icon collection can be downloaded at sourceforge.

20 icon themes in one.

6 different application icons and 11 kinds of folders

http://sourceforge.net/projects/sardi/

For ease of installation I use the script

    - icons-sardi-vx.sh

Follow the collection on google+ : https://plus.google.com/u/0/collection/YFP-LB

The most recent pictures can be found there.

Sardi is **meant to be changed by the users**. You can use scripts to change the hexadecimal colour code in about 3 seconds.

    Sardi Colora has such a colouring script.
    Sardi Flat Colora has such a colouring script.
    Sardi Flexible has such a colouring script.
    Sardi Ghost Flexible has such a colouring script.
    Sardi Mono Colora has such a colouring script.
    Sardi Mono Numix Colora has such a colouring script.

Colour codes can be figured out locally with gpick or online via http://www.colorpicker.com/.

## Sardi-extra icons have been installed

install-icons-sardi-extra-v1.sh

103 Sardi Extra icons July 2017.

There is also a collection of **Sardi Extra** icons at

https://github.com/erikdubois/Sardi-Extra

Easy installation with this script

        icons-sardi-extra-vx.sh

More documentation on http://erikdubois.be/category/sardi-icons/

## Surfn icons have been installed

install-icons-surfn-v1.sh

17 different icons at July 2017.

For ease of installation I use the script

    - icons-surfn-vx.sh

More info can be found here : https://github.com/erikdubois/Surfn

## Aureola conky collection has been installed

install-conky-aureola-v1.sh

20 conky's at July 2017.

This is an exercise in writing conky configurations in lua syntax.

Easy installation can be done with this script :

    conky-aureola-vx.sh

Some older examples.

![Screenshots](http://i.imgur.com/f1N9ZbD.jpg)

![Screenshots](http://i.imgur.com/f2OZ2wd.jpg)

![Screenshots](http://i.imgur.com/pe5FnVl.jpg)

More information can be found here : http://erikdubois.be/category/linux/aureola/

## Change the cursor

I like the breeze snow cursors.

    install-breeze-snow-cursor-theme-v1

![Screenshots](http://i.imgur.com/wHp0I9s.png)

## Install the plank and download 100+ theme

install-plank-themes-v1.sh

100+ plank themes

Plank is installed through this script

    1-install-core-software-vx.sh

Find plank in the menu and start it. <b>CTRL + Right-click</b> on the plank and choose preferences
and put in on top. Standard you will have only 3 themes.

![Screenshots](http://i.imgur.com/arie1IY.jpg)

If you want to install 100+ plank themes, you need to run this script :

    plank-themes-vx.sh

Surfn icons and all plank themes

![Screenshots](http://i.imgur.com/CRfb4Qo.gif)

Sardi icons and all plank themes

![Screenshots](http://i.imgur.com/dnmq1g0.gif)

Read more on plank e.g. how to autostart plank on boot : http://erikdubois.be/category/linux/plank/

## Change from bash to zsh in your terminal

app-ppa-install-zsh-v1.sh

If you prefer zsh with lots of different themes from oh-my-zsh to spice things up, install zsh via this script.

    ./app-ppa-install-zsh-v1.sh

![Screenshots](http://i.imgur.com/kehYX70.jpg)

Remember to type this in the terminal

    sudo chsh yourname -s /bin/zsh

Log off or reboot.

# Youtube Resources

This is the playlist on youtube for Linux Mint 18.2 cinnamon

https://www.youtube.com/playlist?list=PLlloYVGq5pS6Di4p2KpN9ckmyq3YFvMg1

Content Playlist of 100+ short movies to make your desktop eye-candy.
Sardi icon collection playing its part.

https://www.youtube.com/playlist?list=PLlloYVGq5pS43s05ltH9xh7paFteoT7UB

About 100+ short movies to completely change your desktop experience for linux.
They are made on Linux Mint 18 and still apply on 18.1.
Updating, kernel installation, applications installation, variety settings, firefox and google search, lastpass and xmarks, sardi icon theme, fixing icons that never change, theme installation of vertex and arc, applets, dropbox, zsh, printer, aureola conky, surfn icons, plank, personal settings of cinnamon, gimp scripts added, dropbox fix, keyboard fix for music, ...

Check out the movies by clicking here

They are about an older version of Linux Mint. You will see many things have stayed the same. No need to make them again in 18.2.

<a target="_blank" href="https://www.youtube.com/playlist?list=PLlloYVGq5pS43s05ltH9xh7paFteoT7UB">
<img style="max-width:100%;" src="http://i.imgur.com/UMpseyy.png">
</a>

# Resources

**Sardi icons**

http://erikdubois.be/category/sardi-icons/

https://sourceforge.net/projects/sardi/files/

**Surfn icons**

https://github.com/erikdubois/Surfn

**Aureola conky**

http://erikdubois.be/category/linux/aureola/

https://github.com/erikdubois/Aureola

**Arc Colora**

http://erikdubois.be/category/themes/arc-based-themes/

https://github.com/erikdubois/Arc-Theme-Colora

**Mint-Y Colora**

https://github.com/erikdubois/Mint-Y-Colora-Theme

https://github.com/erikdubois/Mint-Y-Colora-Theme-Collection

**Plank and 100+ Plank Themes**

http://erikdubois.be/category/linux/plank/

https://github.com/erikdubois/Plank-Themes.

# F  A  Q

---

#What can you do if the script does not execute?

Since I sometimes forget to make the script executable, I include here what you can do to solve that.

A script can only run when it is marked as an executable.

    ls -al

Above code will reveal if a script has an "x". X meaning executable.
Google "chmod" and "execute" and you will find more info.

For now if this happens, you should apply this code in the terminal and add the file name.

    chmod +x typeyourfilename

Then you can execute it by typing

    ./typeyourfilename

Or you can follow these steps

![Screenshots](http://i.imgur.com/vXsOaFL.gif)

---

Share the knowledge.
---
