#!/bin/bash

names=(Gomathi Adithya twins)
echo "array has the following name(s): ${names[@]}"

display_names() {
    echo "array has the following name(s) inside function: ${names[@]}"
}

echo "Calling function"

display_names "${names[@]}"  # giving args here is not needed when you are giving it inside the function directly (line-7). Hence a globally defined 'array' will be available inside a function even though you have not passed that array as a parameter/arg to that function while calling it. Just make sure to define the array before you call the function.


# ---
# output will be similar to '1-trainer-arrays.sh'

# ---
# Inside the function, you can define the parameter ( "${names[@]}" ) that was passed to it, like below:- ( but in this case, you have to 'mandatorily' pass args to the function while calling it)      ---> like in '1-trainer-arrays.sh'

# array=$@
#    echo "The array inside the function is ${array[@]}"