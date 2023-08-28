#!/bin/bash

return_text_by_echo() {
    input="$1"
    echo "Message is ${input}"  ##
}

read -p "Enter your message: " message
return_text=$(return_text_by_echo "$message")  ##
echo "$return_text"



# ---
# $ ./read_the_output.sh
# Enter your message: Hi again
# Message is Hi again