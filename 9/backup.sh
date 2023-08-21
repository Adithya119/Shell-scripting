#!/bin/bash


# checking if file name is given as an arguement.

is_file() {
    if [ ! -f "${1}" ]; then
        echo "please enter a file next to ${0}. Cannot find ${1}"
        exit 2
    fi
}

# back up the file which was given in "${1}"

backup_file() {
    is_file "${1}"
    new_file_loc="${1}.bak" 
    cp $1 $new_file_loc
    echo "file is copied to $new_file_loc"
}

backup_file "/home/ec2-user/1.txt"