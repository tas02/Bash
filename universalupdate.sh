#//bin/bash

release_file=/etc/os-release


#if [ -d /etc/pacman.d ]
if grep -q "Arch" $release_file
then
	# The his is based on Arch, run the pacman update command
	sudo pacman -Syu
fi

#if [ -d /etc/apt ]
if grep -q "Ubuntu" $release_file || grep -q "Debian" $release_file
then
	#The host is based on Debian or Ubuntu,
	#Run the apt version of the command
	sudo apt update -y 
	sudo apt dist-upgrade -y
fi
