#!/bin/bash

echo "The zeroth arguement (the executable) is $(basename $0)"
echo "Hello $*"



### notes:

# [ec2-user@ip-172-31-45-220 4]$ ./debug-demo.sh Adithya Reddy Kariveda
# The zeroth arguement (the executable) is ./debug-demo.sh
# Hello Adithya Reddy Kariveda