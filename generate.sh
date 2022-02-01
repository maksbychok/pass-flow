#!/bin/bash

echo 'Enter password length:'

read length

< /dev/urandom tr -dc _A-Z-a-z-0-9 | head -c${1:-$length};echo;