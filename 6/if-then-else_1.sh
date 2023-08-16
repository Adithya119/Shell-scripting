#!/bin/bash

FILE=/tmp/2.txt

# check if file exists

if [[ -f ${FILE} ]]; then
   echo "printing the contents of ${FILE} below:- "
   cat ${FILE}

else 
   echo "file ${FILE} doesn't exist"
   exit 1
fi