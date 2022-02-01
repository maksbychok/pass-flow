#!/bin/bash
. ./generate.sh
echo 'Enter resource URL:'
read url

echo 'Enter login:'
read login

echo 'Enter password length:'
read length

echo 'Enter salt:'
read salt

password=$(generatePassword $length)
filename="./data/$url.sh"
row=$(generateHash "| $login | $password | $url |" $salt)
$(generateFile $row $filename)
# echo $password
