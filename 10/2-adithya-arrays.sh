#!/bin/bash

names=(Gomathi 'Adithya RK' twins)
echo "array has the following name(s): ${names[*]}"

for item in "${names[*]}"  # looping won't be done properly coz of *
do
   echo "name is: ${item}"
done

display_names() {
    array=$*   #  Doesn't matter if you give * or @ here coz while calling the function (line-22) you have given @ and in 'line-17' you have given @ - Hence looping will be done properly.
    echo "array has the following name(s) inside function: ${array[@]}"

    for item in "$@"          # but giving * here will take all values of array as 1 value/string & hence display all values in 1 line (looping is not done properly)
    do
       echo "name inside function is: ${item}"
    done
}

echo "Calling function"
display_names "${names[@]}" 





# -----
# [ec2-user@ip-172-31-45-220 10]$ ./2-adithya-arrays.sh
# array has the following name(s): Gomathi Adithya RK twins
# name is: Gomathi Adithya RK twins
# Calling function
# array has the following name(s) inside function: Gomathi Adithya RK twins
# name inside function is: Gomathi
# name inside function is: Adithya RK
# name inside function is: twins