#!/bin/bash

display_names() {
    test_array=(test-3 test-4)
    echo "values of test_array inside function: ${test_array[*]}"
}

echo "Calling Function"
display_names

echo "values of test_array outside function: ${test_array[*]}"

echo "defining test_array again"

test_array=(test-1 test-2)    # the same array re-defined with new values
echo "values of test_array outside function: ${test_array[*]}"
echo "values of test_array outside function: ${test_array[*]}"

# ----

# [ec2-user@ip-172-31-45-220 10]$ ./array-conflict-2.sh
# Calling Function
# values of test_array inside function: test-3 test-4
# values of test_array outside function: test-3 test-4
# defining test_array again
# values of test_array outside function: test-1 test-2
# values of test_array outside function: test-1 test-2