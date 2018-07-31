# Write a shell script that displays "This script will exit with a 0 exit status." Be sure that the script
# does indeed exit with a 0 exit status.

#! /bin/bash

ls
EXIT_STATUS=$?
echo "This script will exit with a 0 exit status.--> ${EXIT_STATUS}"