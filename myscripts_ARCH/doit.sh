#!/bin/bash

echo "WELCOME TO "HOW TO UNCOMPRESS ANY FILE ""

ansewr=""

while [[ "$ansewr" == "yes" ]] || [[ "$ansewr" == "y" ]] || [[ "$ansewr" == "Y" ]] || [[ "$ansewr" == "Yes" ]] || [[ "$ansewr" = "YES" ]] || [ -z "$ansewr" ]
do
    read -p "ENTER THE NAME FILE :" file
    if [ -e "$file" ]
    then
        case $file in
		*.gz) printf "\n`gunzip $file`\n\n                         DONE\n"
			;; 
  
	        *.bz2) printf "\n`bunzip2 $file`\n\n                         DONE\n"
			;;

		*.zip) printf "\n`unzip $file`\n\n                         DONE\n"
			;;

			
		*.tar) printf "\n`tar -xf $file`\n\n                         DONE\n"
			;;

		*.tar.gz) "\n`tar -xfz $file`\n\n                         DONE\n"
			
			;;

		*.tar.bz2)"\n`tar -xfj $file`\n\n                         DONE\n"

			;;

		*.xz) printf "`unxz $file`\n\n                            DONE\n"

			;;

		*.lzma)printf "`unlzma $file`\n\n                         DONE\n"
			
			;;


		*.rar)printf "`unlzma $file`\n\n                         DONE\n" 
			
			;;

			
		*)echo "I DON'T KNOW HOW TO DECOMPRESS THIS FILE !!"

			;;
	esac 

        
    elif [ -z "$file" ]  
    then
        printf "\nEMPTY!!?\n"
    else 
        echo "THERE IS NO FILE CALLED ${file} !!" 
    fi
        
        read -p "DO YOU WANT TO TRY AGAIN [Y/n] :" ansewr      
done
