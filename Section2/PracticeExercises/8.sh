# Modify the previous script to accept an unlimited number of files and directories as arguments.
# Hint: You'll want to use a special variable.

#! /bin/bash

echo "Executing script: $@"
for ITEM in $@
do
	if [ -f $ITEM ]
	then
		echo "$ITEM is a regular file."
	elif [ -d $ITEM ] 
	then
		echo "$ITEM is a directory"
	else
		echo "This is an other type file."
	fi
done
