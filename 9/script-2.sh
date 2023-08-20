#!/bin/bash

if [[ ! -f "${1}" ]]; then
   echo "please enter a file name next to ${0}"
fi

echo "The following servers are up on $(date +%x)" > status.output

# IFS=$'\n'

for item in $(cat "${1}")
do
   ping -c1 "${item}" && echo "This server is up: ${item}" >> status.output
done

echo "printing contents of status.output"
echo "..."
cat status.output



## ----
# ping -c1 "${item}" && echo "This server is up: ${item}" >> status.output

# this means, if both ping & echo commands are successful, then only redirect the output to 'status.output'. That's why ping xcloud.com is not being redirected to 'status.output'. Hence the use of && between the 2 statements is justified.

# echo $? shows '2' after running 'ping -c1 xcloud.com'
