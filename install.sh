#!/bin/bash
source ./ui.sh
source ./errors.sh

folder=$PS_FLOW_FOLDER

function createFolderIfNotExist() {
    if [ ! -d "$1" ]; then
        mkdir $1
    fi
}

function copy() {
    sudo cp ./add.sh /usr/bin/ps-add
    sudo cp ./create.sh /usr/bin/ps-create
}

if [ -z "$folder" ]; then
    psFolderError
fi

$(createFolderIfNotExist $folder)
$(copy)
echo "Passwords folder: ${green}${bold} $folder ${reset}"
