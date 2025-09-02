#!/bin/bash
#Data Streams
#Funcations


release_file=/etc/os-release
logfile=/var/log/updater.log
errorlog=/var/log/updater_errors.log

check_exit_status() {
     if [ $? -ne 0 ]
     then
	 echo "An error occurred, please check the $errorlog file."
     fi
}     

if grep -q "Arch" $release_file
then
        # The his is based on Arch, run the pacman update command
        sudo pacman -Syu 1>>$logfile 2>>$errorlog
	check_exit_status
fi

if grep -q "Ubuntu" $release_file || grep -q "Debian" $release_file
then
        #The host is based on Debian or Ubuntu,
        #Run the apt version of the command
        sudo apt update -y 1>>$logfile 2>>$errorlog
	check_exit_status
	sudo apt dist-upgrade 1>>$logfile 2>>$errorlog
	check_exit_status
fi
