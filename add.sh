#!/bin/bash
. ./generate.sh

echo 'Enter resource :'
read resource

echo 'Enter resource URL:'
read url

echo 'Enter login:'
read login

echo 'Enter password:'
read -s password

echo 'Enter salt:'
read salt

filename="./data/$resource.sh"
row=$(generateHash "| $resource | $login | $password | $url |" $salt)
$(generateFile "$row" $filename)
