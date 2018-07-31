# Write a shell script that renames all files in the current directory that end in ".jpg" to begin with
# today's date in the following format: YYYY­MM­DD. For example, if a picture of my cat was in
# the current directory and today was October 31, 2016 it would change name from "mycat.jpg" to
# "2016­10­31­mycat.jpg".
# Hint: Look at the format options to the date command.
# For "extra credit" make sure gracefully handle instances where there are no ".jpg" files in the
# current directory. (Hint: Man bash and read the section on the nullglob option.)

#! /bin/bash

cd /Users/jennifergrace
shopt -s nullglob #enable

found=0

for FILE in *.jpg
do
	echo "renaming ${FILE} file to $(date "+%Y-%m-%d")-${FILE}"
	found=1
	mv ${FILE} $(date "+%Y-%m-%d")"-${FILE}"
done

shopt -u nullglob
echo "${found}"
[ $found -eq 0 ] && echo "Directory is empty"


# cd /Users/jennifergrace

# shopt -s nullglob #enable
# found=0
# for FILE in *.jpg
# do
# 	echo "renaming ${FILE} file to $(date "+%Y-%m-%d")-${FILE}"
# 	found=1
# 	mv ${FILE} $(date "+%Y-%m-%d")"-${FILE}"
# done
# shopt -u nullglob
# [ $found -eq 0 ] && echo "Directory is empty"