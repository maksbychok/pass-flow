#!/bin/bash
source ./generate.sh
source ./ui.sh

set -e
$(checkPsFolder $PS_FLOW_FOLDER)

echo 'Enter resource :'
read resource

echo 'Enter resource URL:'
read url

echo 'Enter login:'
read login

echo 'Enter password:'
read -s password

echo 'Enter salt:'
read -s salt

filename="$PS_FLOW_FOLDER/$resource.sh"
row=$(generateHash "| $resource | $login | $password | $url |" $salt)
$(generateFile "$row" $filename)
echo "Created: ${green} ${bolt} $filename"
echo "Password: $password ${reset}"
