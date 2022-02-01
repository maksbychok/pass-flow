#!/bin/bash
. ./generate.sh
echo 'Enter resource URL:'
read url

echo 'Enter login:'
read login

echo 'Enter password:'
read -s password

echo 'Enter salt:'
read salt

filename="./data/$url.sh"
row=$(generateHash "| $login | $password | $url |" $salt)
$(generateFile $row $filename)
