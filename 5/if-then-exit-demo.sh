#!/bin/bash

FILE=/tmp/testing.txt      # storing the file name (with full path) in a variable          # quotes not used for file name

if [[ -f ${FILE} ]]; then
   cat ${FILE}
   exit 0        # you are writing 0 coz if the bash reads this line, it means file exists
fi

exit 1



#### notes:
# if, the file exists, then cat the file & return a code of 0. If not, return 1
# 'fi' marks the end of if statement

# ---

# 1st outcome (when file doesn't exist) :-

# [ec2-user@ip-172-31-45-220 5]$ ./if-then-exit-demo.sh         ---> doesn't return anything coz there's no file to cat
# [ec2-user@ip-172-31-45-220 5]$ echo $?
# 1

# ---
# 2nd outcome (file exists but is empty) :-

# [ec2-user@ip-172-31-45-220 5]$ ./if-then-exit-demo.sh         ---> doesn't return anything coz the file is empty
# [ec2-user@ip-172-31-45-220 5]$ echo $?
# 0

# ---
# 3rd outcome (file exists & has some content in it) :-

# [ec2-user@ip-172-31-45-220 5]$ ./if-then-exit-demo.sh
# Hello world!                                                ---> cats/prints the file's contents
# [ec2-user@ip-172-31-45-220 5]$ echo $?
# 0