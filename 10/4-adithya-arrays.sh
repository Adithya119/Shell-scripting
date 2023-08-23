#!/bin/bash

names=(Gomathi 'Adithya RK' twins)
echo "array has the following name(s): ${names[*]}"
echo "0th parameter: ${names[0]}"    ##
echo "1st parameter: ${names[1]}"
echo "2nd parameter: ${names[2]}"
echo "3rd parameter: ${names[3]}"

for item in "${names[@]}"
do
   echo "name is: ${item}"
done

display_names() {
    array=$@
    echo "array has the following name(s) inside function: $@"   ##
    echo "0th parameter: ${0}"   ##
    echo "1st parameter: ${1}"
    echo "2nd parameter: ${2}"
    echo "3rd parameter: ${3}"

    for item in "$@"
    do
       echo "name inside function is: ${item}"
    done
}

echo "Calling function"
display_names "${names[@]}" 




# --------

