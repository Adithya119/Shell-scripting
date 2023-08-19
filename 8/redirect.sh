#!/bin/bash

for (( row=1; row<=3; row++ ))
do
   for (( col=1; col<=3; col++ ))
   do
      echo "${row} * ${col}"
   done >> row-col.txt
done