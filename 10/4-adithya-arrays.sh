#!/bin/bash

names=(Gomathi 'Adithya RK' twins)
echo "array has the following name(s): ${names[*]}"
echo "0th parameter: ${names[0]}"    ##
echo "1st parameter: ${names[1]}"
echo "2nd parameter: ${names[2]}"
echo "3rd parameter: ${names[3]}"
echo "..."
echo "0th parameter: ${0}"   ##
echo "1st parameter: ${1}"
echo "2nd parameter: ${2}"
echo "3rd parameter: ${3}"

for item in "${names[@]}"
do
   echo "name is: ${item}"
done

cars=(Alto vento)

display_names() {
    array=$@
    echo "array has the following name(s) inside function: $@"   ##
    echo "0th parameter: ${0}"   ##
    echo "1st parameter: ${1}"
    echo "2nd parameter: ${2}"
    echo "3rd parameter: ${3}"
    echo "below are the parameters of 'cars' array:"
    echo "0th parameter: ${cars[0]}"    ##
    echo "1st parameter: ${cars[1]}"
    echo "2nd parameter: ${cars[2]}"

    for item in "$@"
    do
       echo "name inside function is: ${item}"
    done
}

echo "Calling function"
display_names "${names[@]}" 




# --------

# [ec2-user@ip-172-31-45-220 10]$ ./4-adithya-arrays.sh
# array has the following name(s): Gomathi Adithya RK twins
# 0th parameter: Gomathi
# 1st parameter: Adithya RK
# 2nd parameter: twins
# 3rd parameter:              ---------->   empty
# name is: Gomathi
# name is: Adithya RK
# name is: twins
# Calling function
# array has the following name(s) inside function: Gomathi Adithya RK twins
# 0th parameter: ./4-adithya-arrays.sh    ---------->  executable is $0
# 1st parameter: Gomathi
# 2nd parameter: Adithya RK
# 3rd parameter: twins
# name inside function is: Gomathi
# name inside function is: Adithya RK
# name inside function is: twins