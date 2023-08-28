#!/bin/bash

return_3() {
    user_input="${@}"    ##
    b="user input is ${user_input}"
}

read -p "Enter your message: " message
return_3 $message        
echo $b



# $ ./4-return-text.sh
# Enter your message: Hi how are you
# user input is Hi how are you

# refer '5-return_text.sh' for use of 1' instead of @ in line-4 & using quotes in line-9