#!/bin/bash

FILE=/tmp/3.txt

# check if file exists (using negative stmt: ! -f)

if [[ ! -f ${FILE} ]]; then
   echo "${FILE} doesn't exist"
   exit 1                           # exiting coz there's no point in continuing further if file doesn't exist

else 
   echo "printing the contents of ${FILE}"
   cat ${FILE}                      # no need to mention 'exit 0' coz script will naturally terminate at 'fi'
fi