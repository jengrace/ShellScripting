# Write a shell script that asks the user for the number of lines they would like to display from the
# /etc/passwd file and display those lines.

# Example output:

# How many lines of /etc/passwd would you like to see? 3
# root:x:0:0:root:/root:/bin/bash
# daemon:x:1:1:daemon:/usr/sbin:/usr/sbin/nologin
# bin:x:2:2:bin:/bin:/usr/sbin/nologin

#! /bin/bash

read -p "How many lines of /etc/passwd would you like to see? " USER_LINE_NUM

LINE_NUM=1
while read LINE && [ $LINE_NUM -le $USER_LINE_NUM ]
do
	echo "${LINE_NUM}: ${LINE}"
	((LINE_NUM++))
done < /etc/passwd