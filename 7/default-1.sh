#!/bin/bash

# Description: This script demonstrates default values for positional parameters
# Usage: ./default-1.sh [name] [course]

name=$1
course=$2

if [[ ! -n ${name} ]]; then
   name="guest"
fi

if [[ ! -n ${course} ]]; then
   course="IT Introduction"
fi

# at this point, the args will either have user-provided or default values

echo "Hello ${name}, welcome to ${course} course"