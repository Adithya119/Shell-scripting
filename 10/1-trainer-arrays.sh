#!/bin/bash

display_array() {
    array=$*
    echo "The array inside the function is ${array[*]}"
}

test_input_1=(1 2 3 4 5)

echo "The orginal array for test input 1 is ${test_input_1[*]}"

echo "Calling function"

display_array ${test_input_1[*]}




# with this script, * & @  both are giving me exact same result

# Hence, unless you use loops in your script, both * & @  are the same & yield the same exact result.