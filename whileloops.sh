#!/bin/bash 

myvar=1

while [ -f testfile ]
do
	echo " $(date), The test file exist!"
	sleep 10
done

echo "The file does not exists"
