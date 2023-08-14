#!/bin/bash

echo "The zeroth arguement (the executable) is $(basename $0)"
echo "Hello $*"



### side notes:

#  ${0} ---> prints the executable, which is ./debug-demo.sh
#  $(basename $0) ---> Also prints the executable, but in a neat way, which is debug-demo.sh

# echo "Hello $*" --> * prints out all the args you give (ex:- Hello Adithya Reddy Kariveda)