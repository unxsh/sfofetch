#!/bin/sh
echo "sfofetch installer 0.1"
echo "1) Arch Linux"
    echo "2) Gentoo"
    echo "3) Linux"
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
$(tput bold)/ /         \ \ "' >> /usr/local/bin/sff
      ;;
      "2")
            sudo emerge --ask sys-apps/busybox
        echo '#!/bin/busybox ash
echo "$(tput bold)    ___
 _-----_ 
(       \ $(tput setaf 13)HOST $(tput setaf 7)= $(hostname)
\    0   \ $(tput setaf 13)KERNEL $(tput setaf 7)= $(uname -sr)
 \        ) $(tput setaf 13)UP $(tput setaf 7)= $(/usr/bin/uptime -p | sed "s/up //")
 /      _/ $(tput setaf 13)PACKAGES $(tput setaf 7)= $(expr $(ls -d /var/db/pkg/*/* | wc -l) - 1)
(     _- $(tput setaf 13)WM $(tput setaf 7)= qpwm
\____-"' >> /usr/local/bin/sff
      ;;    
      "3")
        echo "$(tput bold)$(tput setaf 1)WARNING$(tput setaf 7): install busybox utils!!!"
        echo '#!/bin/busybox ash
echo "$(tput bold)    ___
   (.. \   $(tput setaf 3)HOST $(tput setaf 7)= $(hostname)
   (<> |   $(tput setaf 3)KERNEL $(tput setaf 7)= $(uname -sr)
  //  \ \  $(tput setaf 3)UP $(tput setaf 7)= $(/usr/bin/uptime -p | sed "s/up //")
 ( |  | /| $(tput setaf 3)PACKAGES $(tput setaf 7)= >1
_/\ __)/_) $(tput setaf 3)WM $(tput setaf 7)= qpwm
\/-____\/"' >> /usr/local/bin/sff
      ;;
    esac
chmod +x /usr/local/bin/sff
