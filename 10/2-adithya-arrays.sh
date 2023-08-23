#!/bin/bash

names=(Gomathi 'Adithya RK' twins)
echo "array has the following name(s): ${names[*]}"

display_names() {
    array=$@
    echo "array has the following name(s) inside function: ${array[2]}"
}

echo "Calling function"
display_names "${names[@]}" 


