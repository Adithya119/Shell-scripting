#!/bin/bash

name=$1
course=$2

[ -z $name ] && name="guest"                # -z stands for 'empty'
[[ -z $course ]] && course="IT Introduction"

echo "Hello ${name}, welcome to ${course} course"



# this script is also giving the same outcomes as default-1.sh