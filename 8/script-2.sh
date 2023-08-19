#!/bin/bash

dir_path=${1-"/home/ec2-user/contents/*"}

for item in ${dir_path} 
do
        echo "$item"
done




### ---
# output:-

# [ec2-user@ip-172-31-45-220 8]$
# [ec2-user@ip-172-31-45-220 8]$ ./script-2.sh
# /home/ec2-user/contents/dir1
# /home/ec2-user/contents/dir2
# /home/ec2-user/contents/dir3
# /home/ec2-user/contents/dir4
# /home/ec2-user/contents/dir5
# .... and so on

# it's displaying the full path (but we want just the file/dir name)