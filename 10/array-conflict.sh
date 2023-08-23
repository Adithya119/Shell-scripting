#!/bin/bash

test_array=(test-1 test-2)
echo "values of test_array outside function: ${test_array[*]}"

display_names() {
    echo "defining test_array again"
    test_array=(test-3 test-4)       # the same array re-defined with new values
    echo "values of test_array inside function: ${test_array[*]}"
}

echo "Calling Function"
display_names

echo "values of test_array outside function: ${test_array[*]}"


# ----

# [ec2-user@ip-172-31-45-220 10]$ ./array-conflict.sh
# values of test_array outside function: test-1 test-2
# values of test_array inside function: test-3 test-4
# values of test_array outside function: test-3 test-4