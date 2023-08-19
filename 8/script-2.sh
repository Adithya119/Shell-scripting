#!/bin/bash

dir_path=${1-"/home/ec2-user/contents/*"}

for item in ${dir_path} 
do
        echo "$item"
done
