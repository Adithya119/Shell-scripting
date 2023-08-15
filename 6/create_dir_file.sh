#!/bin/bash

mkdir temp-dir
mkdir_ec=$?


# If dir was created, create a file inside it & list the directory's contents. If not, then exit with code 1

if [[ ${mkdir_ec} -eq 0 ]]; then
   echo "directory creation successful"
   touch temp-dir/1.txt
   ls --recursive
   exit 0
fi

   echo "directory creation failed"
   exit 1