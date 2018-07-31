# Modify the script from the previous exercise. Make the "file_count" function accept a directory
# as an argument. Next have the function display the name of the directory followed by a colon.
# Finally, display the number of files to the screen on the next line. Call the function three times.
# First, on the "/etc" directory, next on the "/var" directory and finally on the "/usr/bin" directory.

# Example output:

# /etc:
	# 85

#! /bin/bash

function file_count() {
	DIR_NAME="$1"	
	echo "${DIR_NAME};"
	local NUMBER_OF_FILES=$(ls | wc -l)
	echo "$NUMBER_OF_FILES"   
}

file_count /etc
file_count /var
file_count /usr/bin
