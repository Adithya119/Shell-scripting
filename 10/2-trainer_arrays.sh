#!/bin/bash

# ---------   used * in this script  ---------


display_array() {
    array=$*
    echo "The array inside the function is ${array[*]}" 

    for item in "$*"
    do
       echo "Parameter is ${item}"
    done
}

test_input_1=(1 2 3 4 5)

for item in "${test_input_1[*]}"
do
   echo "External item ${item}"
done

echo "The orginal array for test input 1 is ${test_input_1[*]}"
echo "Calling function"

display_array ${test_input_1[*]}




#  --------- the echo stmts in for loops 'is not' printing in a loop because * is passing all args as 1 arg/string.

# [ec2-user@ip-172-31-45-220 10]$ ./2-trainer_arrays.sh
# External item 1 2 3 4 5
# The orginal array for test input 1 is 1 2 3 4 5
# Calling function
# The array inside the function is 1 2 3 4 5
# Parameter is 1 2 3 4 5