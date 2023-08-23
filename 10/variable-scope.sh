#!/bin/bash

var_1=1

function_test() {
    var_2=2
}

echo "calling function"
function_test

echo "value of var_1 -- ${var_1}"
echo "value of var_2 -- ${var_2}"

# --

# vars defined inside a function or outside are global vars, by default:-

# [ec2-user@ip-172-31-45-220 10]$ ./variable-scope.sh
# calling function
# value of var_1 -- 1
# value of var_2 -- 2