#!/bin/bash

calculate_factorial() {
    if [ $1 -eq 1 ]
    then
        echo 1
    else
        local var=$(( $1 - 1 ))
        local result=$(calculate_factorial $var)
        echo $(( $result * $1 ))        # in every recursion, $1 = $var, not $value
    fi

}

read -p "Enter a number: " value
factorial=$(calculate_factorial $value)
echo "Factorial of $value is: $factorial"


# -----
# $ ./recursive.sh
# Enter a number: 1
# Factorial of 1 is: 1

# Because $1 = 1, it return exit code 1 to line-16. Then line-17 prints "Factorial of 1 is: 1"


# ---
# $ ./recursive.sh
# Enter a number: 5
# Factorial of 5 is: 120

# $ bash -x ./recursive.sh             --------> bash -x output
# + read -p 'Enter a number: ' value
# Enter a number: 5
# ++ calculate_factorial 5          ---> 5 is $value & also $1 to the function
# ++ '[' 5 -eq 1 ']'
# ++ local var=4
# +++ calculate_factorial 4         ---> but here (in this recursion) $1 = 4; # in every recursion, $1 = $var, not $value
# +++ '[' 4 -eq 1 ']'
# +++ local var=3
# ++++ calculate_factorial 3        ---> $1 = 3
# ++++ '[' 3 -eq 1 ']'
# ++++ local var=2
# +++++ calculate_factorial 2       ---> $1 = 2
# +++++ '[' 2 -eq 1 ']'
# +++++ local var=1
# ++++++ calculate_factorial 1      ---> $1 = 1
# ++++++ '[' 1 -eq 1 ']'
# ++++++ echo 1              --> as 1 -eq 1, the 'if' loop echo's '1' as the output of 'calculate_factorial 1', & this '1' is saved as 'result'
# +++++ local result=1
# +++++ echo 2               --> from here, it recurses back to the previous $1 values (2,3,4,5). In this recursion $1=2. ( $result * $1 ) becomes ( 1 * 2 ) = 2. But it cannot stop at 2 because there are few more recursions to do.
# ++++ local result=2
# ++++ echo 6                ---> it further recurses back to previous case where $1 = 3. hence it needs to be multiplied further (2 * 3)
# +++ local result=6
# +++ echo 24                ---> similarly 6 * 4
# ++ local result=24
# ++ echo 120                ---> 24 * 5
# + factorial=120
# + echo 'Factorial of 5 is: 120'
# Factorial of 5 is: 120