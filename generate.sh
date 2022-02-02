#!/bin/bash

function generatePassword {
    tr </dev/urandom -dc _A-Z-a-z-0-9 | head -c${1:-$1}
    echo
}

function generateHash {
    echo $(echo $1 | openssl aes-256-cbc -md sha512 -pbkdf2 -iter 100000 -base64 -pass pass:$2)
}

function generateFile() {
    echo 'echo "Enter salt:"' >$2
    echo 'read -s salt' >>$2
    echo -e "row='$1'" >>$2
    echo 'echo $(echo $row | openssl aes-256-cbc -md sha512 -pbkdf2 -iter 100000 -base64 -d -pass pass:"$salt")' >>$2
    chmod +x $2
}

function checkPsFolder() {
    if [ -z "$1" ]; then
        psFolderError
    fi
}
