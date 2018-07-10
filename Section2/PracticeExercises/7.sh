# Modify the previous script so that it accepts the file or directory name as an argument instead of
# prompting the user to enter it.

#! /bin/bash

if [ -f $1 ]
then
	echo "$1 is a regular file."
elif [ -d $1 ] 
then
	echo "$1 is a directory"
else
	echo "This is an other type file."
fi