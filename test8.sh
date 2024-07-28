#!/bin/bash

read -p "Enter the first value :" first
read -p "Enter the second value :" second

if [ "$first" = "$second" ]
then
	printf "\nboth of the inputs is the same ! "
else
	printf "\nboth of the inputes is not the same ! "
fi	
