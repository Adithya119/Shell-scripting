#!/bin/bash

names=(Gomathi 'Adithya RK' twins)
echo " ***** Below are the parameters of 'names' array***** "
echo "0th parameter: ${names[0]}"    ##
echo "1st parameter: ${names[1]}"
echo "2nd parameter: ${names[2]}"
echo "3rd parameter: ${names[3]}"
echo "..."
echo "0th parameter: ${0}"   ##
echo "1st parameter: ${1}"
echo "2nd parameter: ${2}"
echo "..."


cars=(Alto vento)     ###
echo "${0}"   #
echo "${1}"


display_names() {
    array=$@
    echo "***** Below are the parameters passed to the function *****"   ##
    echo "0th parameter: ${0}"   ## 
    echo "1st parameter: ${1}"
    echo "2nd parameter: ${2}"
    echo "3rd parameter: ${3}"
    echo "***** Below are the parameters of 'cars' array ***** "
    echo "0th parameter: ${cars[0]}"    ##
    echo "1st parameter: ${cars[1]}"
    echo "2nd parameter: ${cars[2]}"

    for item in "$@"
    do
       echo "looping using @ inside the function: ${item}"
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
# 3rd parameter:
# ...
# 0th parameter: ./4-adithya-arrays.sh
# 1st parameter:
# 2nd parameter:
# 3rd parameter:
# name is: Gomathi
# name is: Adithya RK
# name is: twins
# Calling function
# array has the following name(s) inside function: Gomathi Adithya RK twins
# 0th parameter: ./4-adithya-arrays.sh
# 1st parameter: Gomathi
# 2nd parameter: Adithya RK
# 3rd parameter: twins
# below are the parameters of 'cars' array:
# 0th parameter: Alto
# 1st parameter: vento
# 2nd parameter:
# name inside function is: Gomathi
# name inside function is: Adithya RK
# name inside function is: twins