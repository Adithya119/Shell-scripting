#!/bin/bash

dir_path=${1-"/home/ec2-user/contents/"}

for item in $(ls ${dir_path})
do
   echo "processing ${item}"

   if [ -d "${item}" ]; then
      echo "${item} is a directory"
   elif [ -f "${item}" ]; then
      echo "${item} is a file"
   fi   
done


# it's checking until the 'if' stmt but not going past the 'then' stmt  (check bash -x)


# output:-

# [ec2-user@ip-172-31-45-220 8]$ ./script-3+if-loop.sh
# processing dir1
# processing dir2
# processing dir3
# ... and so on..