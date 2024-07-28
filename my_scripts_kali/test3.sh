#!/bin/bash

printf "welcome to the best calculater again !\n"
read -p "the first number :" first
read -p "the second number :" second

echo "[+] = `expr $first + $second`"
echo "[-] = `expr $first - $second`"
echo "[*] = `expr $first \* $second`"
echo "[/] = `expr $first / $second`"
echo "[%] = `expr $first % $second`"
