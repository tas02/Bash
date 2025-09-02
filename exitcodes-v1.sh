#!/bin/bash

directory=/etc

if [ -d $directory ]
then
     echo " The directory $directory exists"
    # exit 0
else	
	echo "The directory $directory does not exists"
    # exit 1 	
fi
   echo "The exit code for this scipt run is $?"

#To seprate and to see error code in this example!

#you need to put $? before echo input.
