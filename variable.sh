#!/bin/bash

myname="Tas"
myage="29"
word=awesome 

echo "Hello, my name is $myname"

echo "I'm $myage years old"
echo "Linux is $word"
echo "You are $word"

files=$(lsblk)
now=$(date)

echo "The system time and date is"
echo $now
echo $files

echo "Hello $myname"
echo "The system time and date is"
echo $now
echo  "Your username is: $USER"
