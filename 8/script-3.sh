#!/bin/bash

dir_path=${1-"/home/ec2-user/contents/"}

for item in $(ls ${dir_path})
do
   echo "${item}"
done
