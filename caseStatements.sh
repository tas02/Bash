#!/bin/bash

finished=0

while [ $finished -ne 1 ]
do
	
	echo "what is your fav Linux distro?"

	echo "1 - Arch"
	echo "2 - CentOS/Rocky"
	echo "3 - Debian"
	echo "4 - Mint"
	echo "5 - Ubuntu"
	echo "6 - others"
        echo "7 - Exit the script."
 read distro;

 case $distro in 
	1) echo "Arch is a rolling release.";;
	2) echo "CentOS is popular on servers.";;
	3) echo "Debain is a community distribution.";;
	4) echo "Mint is popular on desktops and laptops.";;
	5) echo "There are many distros out there.";;
	6) finished=1 ;;
	*) echo "You have enter an appropriate choice."
esac
done

echo "Thank you for using this script."
