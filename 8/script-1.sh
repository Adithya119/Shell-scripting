#!/bin/bash

echo "Directory path entered by user is /home/ubuntu/contents/*"

for path in "/home/ubuntu/contents/*"
do
    echo "processing ${path} "
    if [ -d "$path" ];
    then
        echo "${path} is directory"
    elif [ -f "$path" ];
    then
        echo "$path is file"
    fi
done



### output:-

# [ec2-user@ip-172-31-45-220 8]$ ./script-1.sh
# Directory path entered by user is /home/ubuntu/contents/*
# processing /home/ubuntu/contents/*