#!/bin/bash

courses=(DevOps AWS Azure Linux Windows)              # courses (plural)     # no commas

for (( index=0; index<5; index++ ))
do
   echo ${courses[$index]}                             # plural here as well    # index also has $ before it
done


# echo "${courses[$index]}" also works  ==> double quotes is recommended to avoid issues.

##### Important observation :-
# In c-language styled for-loop, 'courses' was defined outside of for-loop, unlike in for-loop-1.sh