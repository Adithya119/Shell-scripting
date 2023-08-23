#!/bin/bash

display_array() {
    array=$*
    echo "The array inside the function is ${array[*]}"
}

test_input_1=(1 2 3 4 5)

echo "The orginal array for test input 1 is ${test_input_1[*]}"

echo "Calling function"

display_array ${test_input_1[*]}


# ----
# output:-
# [ec2-user@ip-172-31-45-220 10]$ ./1-trainer-arrays.sh
# The orginal array for test input 1 is 1 2 3 4 5
# Calling function
# The array inside the function is 1 2 3 4 5

# ----
# with this script, * & @  both are giving me exact same result

# Hence, unless you use loops in your script, both * & @  are the same & yield the same exact result.