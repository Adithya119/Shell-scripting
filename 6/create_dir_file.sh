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



#### outcomes:-

# [ec2-user@ip-172-31-45-220 6]$ ./create_dir_file.sh
# directory creation successful
# .:
# create_dir_file.sh  create_dir.sh  notes  practice.sh  temp-dir

# ./temp-dir:
# 1.txt

# [ec2-user@ip-172-31-45-220 6]$ ./create_dir_file.sh          ==> running for the 2nd time
# mkdir: cannot create directory ‘temp-dir’: File exists
# directory creation failed