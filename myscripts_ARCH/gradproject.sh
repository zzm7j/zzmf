#!/bin/bash




read -p "ENTER THE FIRST FILE :" fifile
if [ -e "$fifile" ]
then
	read -p "ENTER THE SECOND FILE :" sefile
	if [ -e "$sefile" ]
	then 
	
		f1="`md5sum $fifile`"
         	f2="`md5sum $sefile`"
		if [[ "$f1" == "$f2" ]]
		then
			echo "SAME CONTENT"
		else
			echo "NOT SAME FILE"
		fi

	else
		echo "THERE IS NO FILE CALLED  ${sefile}"
	fi
else

	echo "THERE IS NO FILE CALLED  ${sefile}"
fi



