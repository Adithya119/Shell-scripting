#!/bin/bash

COUNT=20

while (( COUNT>=0 ))       #   $ is not needed before COUNT (unlike in while-2.sh)
do
   echo "${COUNT}"
   (( COUNT-- ))
done