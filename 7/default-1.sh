#!/bin/bash

# Description: This script demonstrates default values for positional parameters
# Usage: ./default-1.sh [name] [course]

name=$1                    # you can also give ${1}
course=$2

if [[ ! -n ${name} ]]; then
   name="guest"
fi

if [[ ! -n ${course} ]]; then
   course="IT Introduction"
fi

# at this point, the args will either have user-provided or default values

echo "Hello ${name}, welcome to ${course} course"



# ------
# outcomes:-

# [ec2-user@ip-172-31-45-220 7]$ ./default-1.sh
# Hello guest, welcome to IT Introduction course

# [ec2-user@ip-172-31-45-220 7]$ ./default-1.sh Adithya Shell scripting
# Hello Adithya, welcome to Shell course

# [ec2-user@ip-172-31-45-220 7]$ ./default-1.sh Adithya "Shell scripting"
# Hello Adithya, welcome to Shell scripting course

# [ec2-user@ip-172-31-45-220 7]$ ./default-1.sh Adithya
# Hello Adithya, welcome to IT Introduction course