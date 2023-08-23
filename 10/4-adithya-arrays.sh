#!/bin/bash

names=(Gomathi 'Adithya RK' twins)
echo "array has the following name(s): ${names[*]}"
echo "1st parameter: ${names[0]}"    ##
echo "2nd parameter: ${names[1]}"
echo "3rd parameter: ${names[2]}"
echo "4th parameter: ${names[3]}"

for item in "${names[@]}"
do
   echo "name is: ${item}"
done

display_names() {
    array=$@
    echo "array has the following name(s) inside function: $@"   ##
    echo "1st parameter: ${0}"   ##
    echo "2nd parameter: ${1}"
    echo "3rd parameter: ${2}"
    echo "4th parameter: ${3}"

    for item in "$@"
    do
       echo "name inside function is: ${item}"
    done
}

echo "Calling function"
display_names "${names[@]}" 




# --------

