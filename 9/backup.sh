#!/bin/bash

is_file() {
    if [ ! -f "${1}" ]; then
        echo "Please provide a file name which needs back up"
        exit 2
    fi
}

backup_file() {
    is_file "${1}"
    new_file_loc="${1}.bak" 
    cp $1 $new_file_loc
    echo "file is copied to $new_file_loc"
}

backup_file