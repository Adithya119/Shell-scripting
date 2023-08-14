#!/bin/bash

name="Adithya RK"                                  # defining a var in script-1
echo "This is from script-1:- name= ${name}"
export name                                    # export statement
./script-2.sh                                   



### notes:

# 3rd statement in the code is to run script-2.sh   -->  make sure to give it's right path

# export statement exports the value of the variable 'name' to whichever script you mention below it. In this case, script-2.sh knows the value of the 'name' variable.