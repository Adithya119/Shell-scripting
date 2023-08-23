#!/bin/bash

var_1=1

function_test() {
    var_2=2
}

echo "calling function"
function_test

echo "value of var_1 -- ${var_1}"
echo "value of var_2 -- ${var_2}"