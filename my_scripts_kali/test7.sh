#!/bin/bash

read -p "Enter the name of the file :" arg1
clear

if [ -e $arg1 ]
then
	if [ -x $arg1 ]
	then
		printf "\n the file ($arg1) has already excute permission"
	else 


		printf "`chmod u+x $arg1`"
		printf "                       !!  The mission has done !!                    "
	fi
elif [ -d $arg1 ]
then
	
	printf "\nsorry sir, this a dir not a file !"

else
	
	printf "sorry the file ($arg1) is not exist !"

    	
fi

