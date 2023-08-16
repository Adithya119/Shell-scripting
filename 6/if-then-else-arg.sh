#!/bin/bash

file_name=$1                       # path of the file can also be given


# check if file_name is empty (given or not)

if [[ ! -n ${file_name} ]]; then         # -z can also be given
   echo "file name is not given"
   exit 1
fi                                      # closing the if statement  ==> this is just an if-then-exit stmt

# check if file exists

if [[ ! -f ${file_name} ]]; then                                   #  this is an if-then-else statement
   echo "${file_name} not found"
   exit 1
# if the given file exists, print the file contents
else
   echo "printing the contents of ${file_name} below:-"
   cat ${file_name}
fi