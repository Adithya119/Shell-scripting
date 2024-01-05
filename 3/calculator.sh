#!/bin/bash

echo "calculator which can add, sub, mul & div 2 numbers"
read -p "enter a " a                         # use read to prompt for user input & use -p to store the user input in some variable (in this case, I chose 'a')
read -p "enter b " b
read -p "enter operation " operation
echo $(( $a ${operation} $b ))                 # use echo to print to screen  # this 1 line is the only login in this file --> $(( a + b )) as seen in folder 2/arithmetic.sh





# ./calculator.sh
# calculator which can add, sub, mul & div 2 numbers
# enter a 10
# enter b 2
# enter operation /
# 5
