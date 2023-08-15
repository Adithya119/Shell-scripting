#!/bin/bash

FILE=/tmp/testing.txt      # storing the file name (with full path) in a variable          # quotes not used for file name

if [[ -f ${FILE} ]]; then
   cat ${FILE}
   exit 0
fi

exit 1



#### notes:
# if, the file exists, then cat the file & return a code of 0. If not, return 1
# 'fi' marks the end of if statement