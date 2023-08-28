#!/bin/bash

return_2() {
    user_input="${1}"
    b="user input is ${user_input}"
}

read -p "Enter your message: " 
return_2 "$REPLY"                
echo $b



# -----

# Note: by default your recent input will be stored in $REPLY (not in $reply)

# ---
# $ ./2-return_text.sh
# Enter your message: Hello how are you
# user input is Hello how are you

# refer '3-return_text.sh' & '4-return_text.sh' to store user input in your own variable instead of in $REPLY