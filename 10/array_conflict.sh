#!/bin/bash

test_array=(test-1 test-2)
echo "values of test_array outside function: ${test_array[*]}"

display_names() {
    #test_array=(test-3 test-4)
    echo "values of test_array inside function: ${test_array[*]}"
}

display_names

echo "values of test_array outside function: ${test_array[*]}"