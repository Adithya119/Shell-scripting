#!/bin/bash

file_name="test-1.txt"
IFS=$'\n'                       # we are making 'newline' as the default IFS     # this is the only difference in script

for item in $(cat ${file_name})         # for every item in the contents of the given file
do
   echo "${item}"
done