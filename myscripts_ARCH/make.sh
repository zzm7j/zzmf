#!/bin/bash

printf "                                WELCOME TO PERMISSIONS PROVIDER !           \n                               CHOSE FOR WHO WILL BE THE PERMISSION\n"

printf "[1]-USER\n[2]-GROUP\n[3]-OTHERS\n"
read -p "ENTER THE NUMBER OF THE SERVICE NOT THE STR OR CHR :" who

if [[ "$who" == "1" ]]
then 
	read -p "WHAT IS THE FILE'S NAME :" file


	if [ -e "$file" ] || [ -d "$file" ]
	then
		printf "WHAT IS THE SERVICE OF THE PROVIDER YOU WANT TO DO :\n[1]GIVE\n[2]TAKE\n"
		read -p "ENTER THE NUMBER THE SERVICE NOT THE STR OR CHR :" ser
		if [[ "$ser" == "1" ]]
                then 
			printf "WHAT IS THE TYPE OF PERMISSION YOU WANT TO GIVE :\n[1]READ\n[2]WRITE\n[3]EXCUTE\n"
			read -p "ENTER THE NUMBER OF THE SERVICE NOT THE STR OR CHR :" permission
			if [[ "$permission" == "1" ]] 
		        then 
			           printf "`chmod u+r $file`"
			           echo         DONE      
		        elif [[ "$permission" == "2" ]]
		        then 

			        printf "`chmod u+w $file`"
				echo            DONE
			elif [[ "$permission" ==  "3" ]]
			then
		
				printf "`chmod u+x $file`"	
			else 
				printf "\nTHERE IS NOT A PERMISSION LIKE THIS !!\n"
		
	           	fi

		elif [[ "$ser" == "2" ]]
                then 
			printf "WHAT IS THE TYPE OF PERMISSION YOU WANT TO GIVE :\n[1]READ\n[2]WRITE\n[3]EXCUTE\n"
			read -p "ENTER THE NUMBER OF THE SERVICE NOT THE STR OR CHR :" permission
			if [[ "$permission" == "1" ]] 
		        then 
			           printf "`chmod u-r $file`"
			           echo         DONE      
		        elif [[ "$permission" == "2" ]]
		        then 

			        printf "`chmod u-w $file`"
				echo            DONE
			elif [[ "$permission" == "3" ]]
			then
		
				printf "`chmod u-x $file`"	
				echo            DONE
			else 
				printf "\nTHERE IS NOT A PERMISSION LIKE THIS !!\n"
			fi
		else 
	   		printf "\nTHERE IS NO OPERATION LIKE THIS !!\n"
		fi
	

	elif [ -z "$file" ]
	then 
		printf "                       \n                                                    	EMPTY ??\n"
	else
		printf "\n 				THERE IS NO FILE LIKE THIS !!\n"
	fi
	


elif [[ "$who" == "2" ]] 
then
        read -p "WHAT IS THE FILE'S NAME :" file


        if [ -e "$file" ] || [ -d "$file" ]
        then

                printf "WHAT IS THE SERVICE OF THE PROVIDER YOU WANT TO DO \n[1]GIVE\n[2]TAKE\n"
                read -p "ENTER THE NUMBER THE SERVICE NOT THE STR OR CHR :" ser

                if [[ "$ser" == "1" ]]
                then
                        printf "WHAT IS THE TYPE OF PERMISSION YOU WANT TO GIVE :\n[1]READ\n[2]WRITE\n[3]EXCUTE\n"
                        read -p "ENTER THE NUMBER OF THE SERVICE NOT THE STR OR CHR :" permission
                        if [[ "$permission" == "1" ]]
                        then
                                   printf "`chmod g+r $file`"
                                   echo         DONE
                        elif [[ "$permission" == "2" ]]
                        then

                                printf "`chmod g+w $file`"
                                echo            DONE
                        elif [[ "$permission" == "3" ]]
                        then
                                printf "`chmod u+x $file`"



                        elif [ -z $file ] 
                        then
                                 printf " \n           EMPTY ?      \n"


                        else 
                                printf "\nTHE FILE NAMED [$file] ISN'T EXIST\n"
 
                        
		        fi

		elif [[ "$ser" == "2" ]]
                then 
			printf "\nWHAT IS THE TYPE OF PERMISSION YOU WANT TO GIVE :\n[1]READ\n[2]WRITE\n[3]EXCUTE\n"
			read -p "ENTER THE NUMBER OF THE SERVICE NOT THE STR OR CHR :" permission
			if [[ "$permission" == "1" ]] 
		        then 
			           printf "`chmod g-r $file`"
			           echo         DONE      
		        elif [[ "$permission" == "2" ]]
		        then 

			        printf "`chmod g-w $file`"
				echo            DONE
			elif [[ "$permission" == "3" ]]
			then
		
				printf "`chmod g-x $file`"	
				echo            DONE
			else 
				printf "\nTHERE IS NOT A PERMISSION LIKE THIS !!\n"
			fi
		else 
			printf "\nTHERE IS NO OPERATION LIKE THIS !!\n"
		fi

        elif [ -z "$file" ] 
	then
		printf "\n							            EMPTY ?      \n"	

        else 
	     	printf "\nTHE FILE NAMED [$file] ISN'T EXIST\n"
 	fi
elif [ -z "$who" ]

then
	printf "\n 				                                EMPTY !!\n"



elif [[ "$who" == "3" ]] 
then
        read -p "WHAT IS THE FILE'S NAME :" file


        if [ -e "$file" ] || [ -d "$file" ]
        then

                printf "WHAT IS THE SERVICE OF THE PROVIDER YOU WANT TO DO \n[1]GIVE\n[2]TAKE\n"
                read -p "ENTER THE NUMBER THE SERVICE NOT THE STR OR CHR :" ser

                if [[ "$ser" == "1" ]]
                then
                        printf "WHAT IS THE TYPE OF PERMISSION YOU WANT TO GIVE :\n[1]READ\n[2]WRITE\n[3]EXCUTE\n"
                        read -p "ENTER THE NUMBER OF THE SERVICE NOT THE STR OR CHR :" permission
                        if [[ "$permission" == "1" ]]
                        then
                                   printf "`chmod o+r $file`"
                                   echo         DONE
                        elif [[ "$permission" == "2" ]]
                        then

                                printf "`chmod o+w $file`"
                                echo            DONE
                        elif [[ "$permission" == "3" ]]
                        then
                                printf "`chmod o+x $file`"



                        elif [ -z $file ] 
                        then
                                 printf " \n           EMPTY ?      \n"


                        else 
                                printf "\nTHE FILE NAMED [$file] ISN'T EXIST\n"
 
                        
		        fi

		elif [[ "$ser" == "2" ]]
                then 
			printf "\nWHAT IS THE TYPE OF PERMISSION YOU WANT TO GIVE :\n[1]READ\n[2]WRITE\n[3]EXCUTE\n"
			read -p "ENTER THE NUMBER OF THE SERVICE NOT THE STR OR CHR :" permission
			if [[ "$permission" == "1" ]] 
		        then 
			           printf "`chmod o-r $file`"
			           echo         DONE      
		        elif [[ "$permission" == "2" ]]
		        then 

			        printf "`chmod o-w $file`"
				echo            DONE
			elif [[ "$permission" == "3" ]]
			then
		
				printf "`chmod o-x $file`"	
				echo            DONE
			else 
				printf "\nTHERE IS NOT A PERMISSION LIKE THIS !!\n"
			fi
		else 
			printf "\nTHERE IS NO OPERATION LIKE THIS !!\n"
		fi

        elif [ -z "$file" ] 
	then
		printf "\n							            EMPTY ?      \n"	

        else 
	     	printf "\nTHE FILE NAMED [$file] ISN'T EXIST\n"
 	fi
elif [ -z "$who" ]

then
	printf "\n 				                                EMPTY !!\n"

else
	printf "\nENTER ONE OF THE NUMBERS ABOVE !!! \n"
fi
