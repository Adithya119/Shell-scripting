#!/bin/bash

return_3() {
    user_input="${1}"    ##
    b="user input is ${user_input}"
}

read -p "Enter your message: " message
return_3 "$message"        
echo $b


# line-4:- using '1' instead of @ & in line-9:- using quotes.

# $ ./5-return_text.sh
# Enter your message: Hi how are you
# user input is Hi how are you
