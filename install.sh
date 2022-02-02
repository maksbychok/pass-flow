#!/bin/bash
red=$(tput setaf 1)
green=$(tput setaf 2)
reset=$(tput sgr0)
bold=$(tput bold)
folder=$PS_FLOW_FOLDER

if [ -z "$folder" ]; then
    echo "${red}\$PS_FLOW_FOLDER is empty."
    echo "Please set \$PS_FLOW_FOLDER as env variable."
    echo "${green}export PS_FLOW_FOLDER=<path>${reset}"
else
    $(createFolderIfNotExist $folder)
    $(copy)
    echo "Passwords folder: ${green}${bold} $folder ${reset}"
fi

function createFolderIfNotExist() {
    if [ ! -d "$1" ]; then
        mkdir $1
    fi
}

function copy() {
    sudo cp ./add.sh /usr/bin/ps-add
    sudo cp ./create.sh /usr/bin/ps-create
}
