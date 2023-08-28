#!/bin/bash

return_3() {
    user_input="${1}"
    b="user input is ${user_input}"
}

read -p "Enter your message: " message      ##
return_3 $message        
echo $b



#
# In line-9, $message will only capture the 1st word of user input (ex: Hello), not Hello how are you, because $message is not wrapped in quotes.

# $ ./3-return_text.sh
# Enter your message: Hi how are you!
# user input is Hi


# but when you give @ in line-4 instead of '1', it will pull all args even though you din't give quotes to $message --> refer '4-return-text.sh'