# Write a script that renames files based on the file extension. The script should prompt the user
# for a file extension. Next, it should ask the user what prefix to prepend to the file name(s). By
# default the prefix should be the current date in YYYY­MM­DD format. So, if the user simply
# presses enter the date will be used. Otherwise, whatever the user entered will be used as the
# prefix. Next, it should display the original file name and the new name of the file. Finally, it
# should rename the file

# Example output 1:

# Please enter a file extension: jpg
# Please enter a file prefix: (Press ENTER for 2015­08­10). vacation
# Renaming mycat.jpg to vacation­mycat.jpg.

# Example output 2:

# Please enter a file extension: jpg
# Please enter a file prefix: (Press ENTER for 2015­08­10).
# Renaming mycat.jpg to 2015­08­10­mycat.jpg.


#! /bin/bash
cd /Users/jennifergrace
shopt -s nullglob #enable

found=0

read -p "Please enter a file extension: " FILE_EXT
read -p "Please enter a file prefix: (Press ENTER for $(date "+%Y%m%d")) " FILE_PRE

PREFIX_LEN=${#FILE_PRE}

for FILE in *.${FILE_EXT}
do
	found=1
	if [ ${PREFIX_LEN} -eq 0 ]
	then
		echo "Renaming ${FILE} to $(date "+%Y%m%d")${FILE}"
		mv ${FILE} $(date "+%Y%m%d")"${FILE}"
	else
		echo "Renaming ${FILE} to ${FILE_PRE}${FILE}"
		mv ${FILE} ${FILE_PRE}${FILE}
	fi
done

shopt -u nullglob
echo "${found}"
[ $found -eq 0 ] && echo "Directory is empty"