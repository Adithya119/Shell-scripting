#!/bin/bash

mkdir temp-dir
mkdir_ec=$?


# Testing if the directory was created

if [[ ${mkdir_ec} -eq 0 ]]; then
   echo "directory creation successful"
fi

   echo "directory creation failed"
   exit 1


# creating a file inside that dir

touch temp-dir/1.txt
exit 0