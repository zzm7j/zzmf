#!/bin/bash

printf "Welcome to the counter !\n"
read -p "Enter ur name :" name
len=`expr length $name`


printf "[*]charchters number :`expr length $name`\n[*]the first character:`expr substr $name 1 1`\n[*]the last character :`expr substr $name $len $len`"
