#!/bin/bash


display_names() {
    local test_array=(test-1 test-2)    # the use of 'local' keyword before the array name does the trick
    echo "values of test_array inside function: ${test_array[*]}"      
}

display_names

echo "values of test_array outside function: ${test_array[*]}"



# ---

# [ec2-user@ip-172-31-45-220 10]$
# [ec2-user@ip-172-31-45-220 10]$ ./local_arrays.sh
# values of test_array inside function: test-1 test-2
# values of test_array outside function:
