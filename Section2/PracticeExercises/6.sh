# Write a shell script that prompts the user for a name of a file or directory and reports if it is a
# regular file, a directory, or other type of file.
# Also perform an ls command against the file or directory with the long listing option.

#! /bin/bash

read -p "Enter the name of a file or directory: " FDNAME

if [ -f ${FDNAME} ]
then
	echo "${FDNAME} is a regular file."
elif [ -d ${FDNAME} ] 
then
	echo "${FDNAME} is a directory"
else
	echo "This is an other type file."
fi