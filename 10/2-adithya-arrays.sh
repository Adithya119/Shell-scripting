#!/bin/bash

names=(Gomathi 'Adithya RK' twins)
echo "array has the following name(s): ${names[*]}"

for item in "${names[*]}"   # 1
do
   echo "name is: ${item}"
done

display_names() {
    array=$*   # 2
    echo "array has the following name(s) inside function: ${array[@]}"

    for item in "$@"              # 3     # giving * will take all values of array as 1 string & hence display all values in 1 line (looping is not done properly)
    do
       echo "name inside function is: ${item}"
    done
}

echo "Calling function"
display_names "${names[@]}" 

