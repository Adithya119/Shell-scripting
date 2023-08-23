#!/bin/bash

getValue()
{
    ABC=$1
    XYZ="something $ABC"
    return $XYZ
}


VALUE=$( getValue "12345" )
echo $VALUE