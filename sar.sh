#!/bin/bash

command= sar -n DEV 10

if command -v $command 

#[-f $command ] 
then
   echo "$command is available, lets run it.."
else
   echo "$command is not installed, lets install it ...."
   sudo apt update && sudo apt install sysstat -y
fi

$command
