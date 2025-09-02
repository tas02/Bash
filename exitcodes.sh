#!/bin/bash

package=noexits

sudo apt install $package >> package_install_results.log

#echo "The exit code for the package install is: $?"

if [ $? -eq 0 ]
then
echo "The $package is already installed"
echo "The new command is here"

which $package 
else
echo "$package failed to install"  >> package_install_failure.log
fi
