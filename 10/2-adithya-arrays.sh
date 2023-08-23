#!/bin/bash

names=(Gomathi 'Adithya RK' twins)
echo "array has the following name(s): ${names[*]}"

for item in "${names[@]}"
do
   echo "name is: ${item}"
done

display_names() {
    array=$@
    echo "array has the following name(s) inside function: ${array[@]}"

    for item in "$@"
    do
       echo "name inside function is: ${item}"
    done
}

echo "Calling function"
display_names "${names[@]}" 
