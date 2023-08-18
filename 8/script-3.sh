#!/bin/bash

dir_path={1-"/home/ec2-user/contents/*"}

for path in $(ls ${dir_path})
do
   echo "${path}"
done