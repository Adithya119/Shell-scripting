#!/bin/bash

COUNT=20

while [ $COUNT -gt 0 ]         #  $ is needed before COUNT when using single bracket [ ].   $ is not needed when using [[ ]]
do
   echo "${COUNT}"
   (( COUNT-- ))
done


# error:-

# [ec2-user@ip-172-31-45-220 8]$ ./while-2.sh
# ./while-2.sh: line 5: [: COUNT: integer expression expected