#!/bin/bash

courses=(DevOps AWS Azure Linux Windows)              # courses (plural)     # no commas

for (( index=0; index<5; index++ ))
do
   echo ${courses[$index]}                             # plural here as well    # index also has $ before it
done