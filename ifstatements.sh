#!/bin/bash

mynum=300

if [  $mynum -gt 200 ]
then	echo "The condition is true."
else	echo "The variable does not equal 200."
fi

if [ -f ~/myfile ]
then echo "The file does exists"
else echo "The file does not exists"
fi

if [ -d ~/myfile ]
then echo "The folder does exists"
else echo "The folder does not exists"
fi

command=/usr/bin/htop

if [ -f $command ]
then 
    echo " $command is available, let's run it..."
else 
    echo "$command is NOT available, installing it..."
    sudo apt update && sudo  apt install -y htop
fi

$command


command=htop

if  -v $command
then
    echo " $command is available, let's run it..."
else
    echo "$command is NOT available, installing it..."
    sudo apt update && sudo  apt install -y $command
fi

$command
