#!/bin/bash

echo "Directory path entered by user is /home/ubuntu/contents/*"

for path in "/home/ubuntu/contents/*";
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