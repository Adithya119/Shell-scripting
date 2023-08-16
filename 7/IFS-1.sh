#!/bin/bash

file_name=test-1.txt               # you can enclose test-1.txt in double quotes

for item in $(cat ${file_name})        # for every item in the contents of the given file
do
   echo $item                      # you can enclose $item in double quotes
done


### Notes:-
# you are storing each content in 'item', hence you need to use $ before 'cat' & before 'item'


# outcome:-

# [ec2-user@ip-172-31-45-220 7]$ ./IFS-1.sh
# Hello,
# This
# is
# Adithya
# This
# file
# is
# used
# for
# IFS-1.sh