#!/bin/bash

printf "Welcome to the compartion profg !\n[*]the input should be int or numbers\n[*]the {0} means false \n[*]the {1} means Truth\n"



read -p "Enter the first number :" first
read -p "Enter the first number :" second

printf "\n[=]result   :      `expr $first = $second`\n"
printf "[!=]result  :      `expr $first != $second`\n"
printf "[<] result  :      `expr $first \< $second`\n"
printf "[<=]result  :      `expr $first \<= $second`\n"
printf "[> ]result  :      `expr $first \> $second`\n"
printf "[>=]result  :      `expr $first \>= $second`\n"
printf "[|]result   :      `expr $first \| $second`\n"
printf "[&]result   :      `expr $first \& $second`"



