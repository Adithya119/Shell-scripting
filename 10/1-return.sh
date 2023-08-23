#!/bin/bash

getValue()
{
    ABC=$1
    XYZ="something"$ABC
    echo $XYZ
}

VALUE=$( getValue "12345" )     # logic
echo $VALUE



# ----

# [ec2-user@ip-172-31-45-220 10]$ ./1-return.sh
# something12345

# All this script did was to pass whatever the function has returned, to a variable called as VALUE & echoed it.