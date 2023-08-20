#!/bin/bash

# Usage: ./checkservers <servers-filepath>
# servers-filepath is a text file with each server in new line

if [ ! -f "$1" ]; then
    echo "The input to $0 should be a file"
fi

echo "The following servers are up on $(date +%x)" > checkservers.out

while read item
do
    ping -c1 "${item}" && echo "this server is up:- ${item}" >> checkservers.out
done < $1                                                            # you're telling while stmt to read 'item' from $1 arguement.

echo "..."
echo "printing contents of checkoutservers.out"
echo "..."
cat checkservers.out


# date +%x --> gives today's date (ex:- 08/20/2023)
# this script is not listing 'xcloud.com' as 'up' --> check script-2.sh notes for explanation