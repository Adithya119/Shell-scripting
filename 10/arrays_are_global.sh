#!/bin/bash


display_names() {
    test_array=(test-1 test-2)
    echo "values of test_array inside function: ${test_array[*]}"
    echo "${1}"         # will display the 1st arg that wes passed to the function while calling it
}

display_names

echo "values of test_array outside function: ${test_array[*]}"
