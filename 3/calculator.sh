#!/bin/bash

echo "calculator which can add, sub, mul & div 2 numbers"
read -p "enter a " a
read -p "enter b " b
read -p "enter operation " operation
echo $(( a ${operation} b ))                 # use echo to print to screen  # this 1 line is the only login in this file --> $(( a+b )) as seen in folder 2/arithmetic.sh





# ./calculator.sh
# enter any of a+b, a-b, a*b, a/b   # just echo
# enter a 10
# enter b 2
# enter operation +


