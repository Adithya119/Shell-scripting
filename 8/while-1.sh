#!/bin/bash

COUNT=20

while (( COUNT>=0 ))       #   $ is not needed before COUNT
do
   echo "${COUNT}"
   (( COUNT-- ))
done