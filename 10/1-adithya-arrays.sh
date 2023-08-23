#!/bin/bash

names=(Gomathi Adithya twins)
echo "array has the following name(s): ${names[@]}"

display_names() {
    echo "array has the following name(s) inside function: ${names[@]}"
}

echo "Calling function"
display_names "${names[@]}"



# ---
# inside the function, you can also define the parameter ( "${names[@]}" ) that was passed to it, like this:-

# array=$@
#    echo "The array inside the function is ${array[@]}"