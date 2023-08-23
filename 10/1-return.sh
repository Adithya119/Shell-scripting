#!/bin/bash

getValue()
{
    ABC=$1
    XYZ="something" $ABC
    return "$XYZ"
}

VALUE=$( getValue "12345" )
echo $VALUE



# ---------------
# getValue()
# {
#     ABC=$1
#     XYZ="something"$ABC
#     echo $XYZ
# }
# 
# 
# VALUE=$( getValue "12345" )
# echo $VALUE