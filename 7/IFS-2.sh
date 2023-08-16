#!/bin/bash

file_name="test-1.txt"
IFS=$'\n'                       # we are making 'newline' as the default IFS     # this is the only difference in script

for item in $(cat ${file_name})         # for every item in the contents of the given file
do
   echo "${item}"
done




# ---

# outcome:-

# [ec2-user@ip-172-31-45-220 7]$ ./IFS-2.sh
# Hello,
# This is Adithya
# This file is used for IFS-1.sh