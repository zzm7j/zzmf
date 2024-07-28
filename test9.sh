#!/bin/bash


username="m7md"
password="kali"

read -t 4  -p "Enter the username :" username1

if [[ $username1 == $username ]] 
then
	read -t 3 -s -p "Enter the Password :" password1
	if [[ $password1 == $password ]]
	then
		printf "`clear`"
		printf "                                                     welcome mr.mohammed                               "
	elif [[ $password1 != $password ]] || [ -e $username1 ]
	then
		printf "\n                                                                bye bye !                  "
		printf "`sudo ifconfig eth0 down`"

	else 
		printf "\n invaild input !"
	fi

elif [[ $username1 != $username ]] || [ -n $username1 ]

then
	printf ""
	printf "\n                                                                 bye bye !     "
	printf "`sudo ifconfig eth0 down`"

else 

	printf "\ninvalid input !"
fi

