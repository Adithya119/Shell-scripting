#!/bin/bash

mkdir temp-dir
mkdir_ec=$?


# Testing if the directory was created

if [[ ${mkdir_ec} -eq 0 ]]; then
   echo "directory creation successful"
   exit 0                                  # if you don't give this, bash will go on with the rest of the script & will also print "directory creation failed"
fi

   echo "directory creation failed"
   exit 1                                  # this is required coz there's no point in continuing with this script anymore.


# creating a file inside the dir

touch temp-dir/1.txt                  # this line won't even be read by the bash coz the script terminates by either of the above 2 statements (exit 0 or 1) 