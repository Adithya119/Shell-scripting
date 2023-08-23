#!/bin/bash


display_names() {
    local test_array=(test-1 test-2)
    echo "values of test_array inside function: ${test_array[*]}"
    echo "${1}"         # will display the 1st arg that was passed to the function while calling it.
}

display_names

echo "values of test_array outside function: ${test_array[*]}"




# ---

# [ec2-user@ip-172-31-45-220 10]$ ./arrays_are_global.sh
# values of test_array inside function: test-1 test-2
#                                             -----------------> empty here coz no arg was passed to the function while calling it.                                                          
# values of test_array outside function: test-1 test-2