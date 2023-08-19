#!/bin/bash

dir_path=${1-"/home/ec2-user/contents/"}

for item in $(ls ${dir_path})
do
   echo "${item}"
done


# 'index' is not needed coz it knows when to stop processing when it reaches end of items in the 'ls' output