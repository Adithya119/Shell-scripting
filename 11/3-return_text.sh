#!/bin/bash

return_3() {
    user_input="${@}"
    b="user input is ${user_input}"
}

read -p "Enter your message: " message
return_3 $message
echo $b