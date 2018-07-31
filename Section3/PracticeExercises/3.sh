# Write a script that executes the command "cat /etc/shadow". If the command returns a 0 exit
# status report "Command succeeded" and exit with a 0 exit status. If the command returns a
# non­zero exit status report "Command failed" and exit with a 1 exit status.

#! /bin/bash

cat /Users/jennifergrace/ShellScripting/Section3/PracticeExercises/1.sh

EXIT_STATUS=$?

echo "Exit status is ${EXIT_STATUS}"

if [ ${EXIT_STATUS} -eq "0" ]
then 
	echo "Command succeeded"
else
	echo "Command failed"
	exit 1
fi
