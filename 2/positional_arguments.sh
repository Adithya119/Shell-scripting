#!/bin/bash

echo ${1}
echo 0 = ${0} and 1 = ${1}                # you can also include this in quotations ""


####################  command ran on CLI #######################
#    ./positional_arguments.sh "explained by adithya"
#    explained by adithya                                                 
#    0 = ./positional_arguments.sh and 1 = explained by adithya


# ./positional_arguments ----> executable
# "explained by adithya" ----> arguement/parameter

# Note:- if "explained by adithya" was given without "" it would have taken explained as 1st arg, by as 2nd arg & adithya as 3rd arg