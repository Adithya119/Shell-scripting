#!/bin/bash


# checking if filepath is provided next to the function name

is_file() {
    if [ ! -f "${1}" ]; then
        echo "Please provide a file name which needs back up"
        exit 2
    fi
}

# taking back up of that file

backup_file() {
    is_file "${1}"
    new_file_loc="${1}.bak" 
    cp $1 $new_file_loc
    echo "file is copied to $new_file_loc"
}

backup_file "/home/ec2-user/1.txt"         # enclosing in quotes is optional


## --
# observations:-

# The 'is_file' function just checks if the arg given to 'backup_file' function is a file or not.

# Note that the 'is_file' function is taking an arg (which is ${1}); Hence while calling that function, you need to give that specific arg next to it (refer line-16) and then call it. It's like providing it with required inputs. (( ex:- the function 'show_system_details' in 'function-2.sh' file doesn't need any args to process it's content/script; Hence we don't need to give any args while calling that function.

# If you don't provide the 'is_file' function with arg ${1}, it's assuming no arg is given & printing:- 
# [ec2-user@ip-172-31-45-220 9]$ ./backup-test.sh
# Please provide a file name which needs back up

# Hence, if any function has args mentioned inside it's script, please remember to provide those args to the function while calling that function.

