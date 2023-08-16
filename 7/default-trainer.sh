#!/bin/bash

name=$1
course=$2

[ -z $name ] && name="guest"                     # -z stands for 'empty'
[[ -z $course ]] && course="IT Introduction"     # used double quotes here because the user provided value of $course variable has space in it (shell scripting)

echo "Hello ${name}, welcome to ${course} course"



# this script is also giving the same outcomes as default-1.sh