#!/bin/bash

names=(Gomathi 'Adithya RK' twins)
echo " ***** Below are the values of 'names' array ***** "
echo "0th value: ${names[0]}"
echo "1st value: ${names[1]}"
echo "2nd value: ${names[2]}"
echo "3rd value: ${names[3]}"
echo "..."

echo "0 is always executable: ${0}"   #  executable
echo "1st arguement: ${1}"   #  positional arg-1 given to executable
echo "2nd arguement: ${2}"
echo "..."


echo " *** defining cars array globally *** "
cars=(Alto vento)   # Note:- this is not given to the function as a parameter
echo "${0}"   #  executable
echo "${1}"   #  positional arg given to the executable
echo "..."


display_names() {
    array=$@
    echo "***** Below are the parameters passed to the function *****"   ##
    echo "0 is always executable: ${0}"   ## 0th arguement is always the executable (./positional_args_parameters.sh) wheather you run it inside or outside a function.
    echo "1st parameter: ${1}"   # but the remaining parameters within function are the ones you pass to the function while calling it & not the positional args given to the executable - refer the bottom most output which shows output with 1 positional arg.
    echo "2nd parameter: ${2}"
    echo "3rd parameter: ${3}"
    echo "***** Below are the values of 'cars' array available even inside the function when called by its name ***** "
    echo "0th value: ${cars[0]}"    ## Even though cars array was not passed as parameters to the function, a function can list it's values by it's name. Hence a globally defined 'array' will be available inside a function even though you have not passed that array as a parameter/arg to that function while calling it.
    echo "1st value: ${cars[1]}"
    echo "2nd value: ${cars[2]}"

    for item in "$@"     # proof that if you use @ for looping without mentioning an array name, it can only pull the parameters that were fed to it while it was called.
    do
       echo "looping using @ inside the function: ${item}"
    done
}

echo "Calling function"
display_names "${names[@]}" 




# --------

# [ec2-user@ip-172-31-45-220 10]$ ./arrays-args-parameters.sh
#  ***** Below are the values of 'names' array *****
# 0th value: Gomathi
# 1st value: Adithya RK
# 2nd value: twins
# 3rd value:
# ...
# 0 is always executable: ./arrays-args-parameters.sh
# 1st arguement:
# 2nd arguement:
# ...
#  *** defining cars array globally ***
# ./arrays-args-parameters.sh
# 
# ...
# Calling function
# ***** Below are the parameters passed to the function *****
# 0 is always executable: ./arrays-args-parameters.sh
# 1st parameter: Gomathi
# 2nd parameter: Adithya RK
# 3rd parameter: twins
# ***** Below are the values of 'cars' array available even inside the function when called by its name *****
# 0th value: Alto
# 1st value: vento
# 2nd value:
# looping using @ inside the function: Gomathi
# looping using @ inside the function: Adithya RK
# looping using @ inside the function: twins



# ---
## --------------------------- gave 1 positional arg ( Hello! ) to the executable -------------------------

# [ec2-user@ip-172-31-45-220 10]$ ./arrays-args-parameters.sh Hello!
#  ***** Below are the values of 'names' array *****
# 0th value: Gomathi
# 1st value: Adithya RK
# 2nd value: twins
# 3rd value:
# ...
# 0 is always executable: ./arrays-args-parameters.sh
# 1st arguement: Hello!
# 2nd arguement:
# ...
#  *** defining cars array globally ***
# ./arrays-args-parameters.sh
# Hello!
# ...
# Calling function
# ***** Below are the parameters passed to the function *****
# 0 is always executable: ./arrays-args-parameters.sh
# 1st parameter: Gomathi
# 2nd parameter: Adithya RK
# 3rd parameter: twins
# ***** Below are the values of 'cars' array available even inside the function when called by its name *****
# 0th value: Alto
# 1st value: vento
# 2nd value:
# looping using @ inside the function: Gomathi
# looping using @ inside the function: Adithya RK
# looping using @ inside the function: twins