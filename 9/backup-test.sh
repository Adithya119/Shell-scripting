#!/bin/bash


# checking if filepath is provided next to the function name

is_file() {
    if [ ! -f "${1}" ]; then
        echo "Please provide a file name which needs back up"
        exit 2
    fi
}

# taking back of that file

backup_file() {
    #is_file "${1}"
    new_file_loc="${1}.bak" 
    cp $1 $new_file_loc
    echo "file is copied to $new_file_loc"
}

backup_file "/home/ec2-user/1.txt"         # enclosing in quotes is optional