#!/bin/bash

printf "welcome, this is the best calculater !\n"
read -p "first number :" first 
read -p "second number :" second

printf "\nthe result is :$((first+second))"
printf "\nthe result is :$((first-second))"
printf "\nthe result is :$((first*second))"
printf "\nthe result is :$((first/second))"
