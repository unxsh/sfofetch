#!/bin/sh
echo "sfofetch installer 0.1"
echo "1) Arch Linux"
    echo "2) Debian"
    echo "3) Gentoo"
    echo "4) Linux"
    read -p "Select needed distro: " distro
    case $distro in
      "1")
      		sudo pacman -Sy busybox
        echo '#!/bin/busybox ash
echo "$(tput bold)       . 
      / \ $(tput setaf 4)HOST     $(tput setaf 7)= $(hostname)
     /   \ $(tput setaf 4)OS       $(tput setaf 7)= "Arch Linux"
    /     \ $(tput setaf 4)KERNEL   $(tput setaf 7)= $(uname -sr)
   /  .-.  \ $(tput setaf 4)UP       $(tput setaf 7)= $(/usr/bin/uptime -p | sed "s/up //")
  /  (   )  \ $(tput setaf 4)PACKAGES $(tput setaf 7)= $(pacman -Q | wc -l)
 / _.-   -._ \ $(tput setaf 4)WM       $(tput setaf 7)= qpwm$(tput sgr0)
$(tput bold)/ /         \ \ "' >> sff
      ;;
      "2")
      		sudo apt install busybox
        echo '#!/bin/busybox ash
echo "$(tput bold)     ,---._
 /`  __  \   $(tput setaf 1)HOST     $(tput setaf 7)= $(hostname)
|   /  \  | $(tput setaf 1)OS       $(tput setaf 7)= Debian $(cat /etc/debian_version)
|   \____/ $(tput setaf 1)KERNEL   $(tput setaf 7)= $(uname -sr)
 \         $(tput setaf 1)UP       $(tput setaf 7)= $(/usr/bin/uptime -p | sed "s/up //")
  \       $(tput setaf 1)PACKAGES $(tput setaf 7)= $(dpkg -l | grep -c ^i)
   `._   $(tput setaf 1)WM       $(tput setaf 7)= qpwm"' >> sff
      ;;
      "3")
        echo '#!/bin/busybox ash
echo "$(tput bold)    ___
 _-----_ $(tput setaf 13)HOST $(tput setaf 7)= $(hostname)
(       \$(tput setaf 13)KERNEL $(tput setaf 7)= $(uname -sr)
\    0   \$(tput setaf 13)UP $(tput setaf 7)= $(/usr/bin/uptime -p | sed "s/up //")
 \        )$(tput setaf 13)PACKAGES $(tput setaf 7)= $(expr $(ls -d /var/db/pkg/*/* | wc -l) - 1)
 /      _/$(tput setaf 13)WM $(tput setaf 7)= qpwm
(     _-
\____-"' >> sff
      ;;
      "4")
        echo '#!/bin/busybox ash
echo "$(tput bold)    ___
   (.. \   $(tput setaf 3)HOST $(tput setaf 7)= $(hostname)
   (<> |   $(tput setaf 3)KERNEL $(tput setaf 7)= $(uname -sr)
  //  \ \  $(tput setaf 3)UP $(tput setaf 7)= $(/usr/bin/uptime -p | sed "s/up //")
 ( |  | /| $(tput setaf 3)PACKAGES $(tput setaf 7)= >1
_/\ __)/_) $(tput setaf 3)WM $(tput setaf 7)= qpwm
\/-____\/"' >> sff
      ;;
    esac
chmod +x sff
sudo cp sff /usr/local/bin/sff
