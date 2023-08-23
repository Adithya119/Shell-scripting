#!/bin/bash

names=(Gomathi 'Adithya RK' twins)
echo "array has the following name(s): ${names[*]}"
echo "${names[0]}"    ##
echo "${names[1]}"
echo "${names[2]}"
echo "${names[3]}"

for item in "${names[@]}"
do
   echo "name is: ${item}"
done

display_names() {
    array=$@
    echo "array has the following name(s) inside function: $@"   ##
    echo "${0}"   ##
    echo "${1}"
    echo "${2}"
    echo "${3}"

    for item in "$@"
    do
       echo "name inside function is: ${item}"
    done
}

echo "Calling function"
display_names "${names[@]}" 




# --------

