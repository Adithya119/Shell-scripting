#!/bin/bash

mkdir temp-dir
mkdir_ec=$?


# Testing if the directory was created

if [[ ${mkdir_ec} -eq 0 ]]; then
   echo "directory creation successful"
fi

   echo "directory creation failed"
   exit 1


# creating a file inside the dir if that dir was created

if [[ -d temp-dir ]]; then
   touch temp-dir/1.txt
   echo "file creation successful"
fi

   echo "file creation failed"
   exit 1