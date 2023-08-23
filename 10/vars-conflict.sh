#!/bin/bash

var_1=1
echo "value of var_1 -- ${var_1}"
echo "..."

function_test() {
    var_1=100       # the same var re-defined with new value
    var_2=2
}

echo "calling function"
function_test

echo "value of var_1 -- ${var_1}"
echo "value of var_2 -- ${var_2}"


echo "..."

# the same vars re-defined with new values
var_1=200
var_2=300
echo "value of var_1 -- ${var_1}"
echo "value of var_1 -- ${var_1}"