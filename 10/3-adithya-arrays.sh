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
    echo "${1}"

    for item in "$@"
    do
       echo "name inside function is: ${item}"
    done
}

echo "Calling function"
display_names "${names[@]}" 




# --------

# [ec2-user@ip-172-31-45-220 10]$ ./2-adithya-arrays.sh
# array has the following name(s): Gomathi Adithya RK twins
# name is: Gomathi
# name is: Adithya RK                 ---------> quotations around 'Adithya RK' are detected by @ and are passed properly as a single parameter
# name is: twins
# Calling function
# array has the following name(s) inside function: Gomathi Adithya RK twins
# name inside function is: Gomathi
# name inside function is: Adithya RK         ---> same here
# name inside function is: twins