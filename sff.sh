#!/bin/busybox ash
echo "$(tput bold)       ."
echo "      / \ $(tput setaf 4)HOST     $(tput setaf 7)= $(busybox cat /etc/hostname)"
echo "     /   \ $(tput setaf 4)OS       $(tput setaf 7)= "Arch Linux""
echo "    /     \ $(tput setaf 4)KERNEL   $(tput setaf 7)= $(busybox uname -sr)"
echo "   /  .-.  \ $(tput setaf 4)UP       $(tput setaf 7)= $(/usr/bin/uptime -p | busybox sed 's/up //')"
echo "  /  (   )  \ $(tput setaf 4)PACKAGES $(tput setaf 7)= $(pacman -Q | busybox wc -l)"
echo " / _.-   -._ \ $(tput setaf 4)WM       $(tput setaf 7)= qpwm$(tput sgr0)"
echo "$(tput bold)/ /         \ \ "
