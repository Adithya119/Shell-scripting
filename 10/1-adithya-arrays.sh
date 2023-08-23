#!/bin/bash

names=(Gomathi Adithya twins)
echo "array has the following name(s): ${names[@]}"

display_names() {
    echo "array has the following name(s) inside function: ${names[@]}"
}

echo "Calling function"
display_names "${names[@]}"  # giving args here is not needed when you are giving it inside the function directly (line-7)



# ---
# Inside the function, you can also define the parameter ( "${names[@]}" ) that was passed to it, like this:- ( but in this case, you have to pass args to the function while calling it)      ---> like in '1-trainer-arrays.sh'

# array=$@
#    echo "The array inside the function is ${array[@]}"