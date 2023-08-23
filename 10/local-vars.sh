#!/bin/bash

#!/bin/bash

var_1=1

function_test() {
    var_2=2
    local var_3=3                                               # the use of 'local' keyword before the variable name does the trick
    echo "value of var_3 inside the function -- ${var_3}"
}

echo "calling function"
function_test

echo "..."
echo "value of var_1 -- ${var_1}"
echo "value of var_2 -- ${var_2}"
echo "value of var_3 outside the function -- ${var_3}"


# ---

# 