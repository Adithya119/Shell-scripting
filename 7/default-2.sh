#!/bin/bash

name=${1-"guest"}
course=${2-"IT Introduction"}

# at this point, the args will either have user-provided or default values

echo "Hello ${name}, welcome to ${course} course"



# ------
# syntax:-
# ${parameter-"default"}     ==>  if parameter is not provided by user, use "default"


# outcomes here are the same as default-1.sh