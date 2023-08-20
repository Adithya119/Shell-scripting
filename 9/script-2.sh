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

cat status.output