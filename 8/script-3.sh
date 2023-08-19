#!/bin/bash

dir_path=${1-"/home/ec2-user/contents/"}

for item in $(ls ${dir_path})
do
   echo "${item}"
done


# 'index' is not needed coz it knows when to stop processing when as soon as it reaches end of the items in the 'ls' output


## output:-

# [ec2-user@ip-172-31-45-220 8]$ ./script-3.sh
# dir1
# dir2
# dir3
# dir4
# .... and so on

# unlike script-2, this is displaying just the file/dir name (as we wanted)