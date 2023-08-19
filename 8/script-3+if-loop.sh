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