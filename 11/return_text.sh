#!/bin/bash

return_1() {
    user_input="${1}"
    b="user input is ${user_input}"    
}

return_1 "Hello how are you"
echo $b      



# ------
# $ ./return_text.sh
# user input is Hello how are you

# echo $b   --->  Using global variables (referencing the var which was defined inside the function). 
#                  This is the simplest form of returning text from a function.

# refer '2-return_text.sh' to prompt for user input.