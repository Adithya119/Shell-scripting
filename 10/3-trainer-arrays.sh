#!/bin/bash

# ---------   used @ in this script  ---------


display_array() {
    array=$@                                                 # here, @ is mandatory for passing of parameters
    echo "The array inside the function is ${array[@]}" 

    for item in "$@"                                       # here, @ is mandatory for proper looping
    do
       echo "Parameter is ${item}"
    done
}

test_input_1=(1 2 3 4 5)

for item in "${test_input_1[@]}"                          # here, @ is mandatory for proper looping
do
   echo "External item ${item}"
done

echo "The orginal array for test input 1 is ${test_input_1[@]}"
echo "Calling function"

display_array ${test_input_1[@]}                         # here, @ is mandatory for passing of parameters




# -----------  the echo stmts in for loops 'is' printing in a loop because @ is passing individual args as it is (not passing all args as 1 arg/string)

# [ec2-user@ip-172-31-45-220 10]$ ./3-trainer-arrays.sh
# External item 1
# External item 2
# External item 3
# External item 4
# External item 5
# The orginal array for test input 1 is 1 2 3 4 5
# Calling function
# The array inside the function is 1 2 3 4 5
# Parameter is 1
# Parameter is 2
# Parameter is 3
# Parameter is 4
# Parameter is 5