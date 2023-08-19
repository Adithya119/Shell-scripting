#!/bin/bash

count=20                   # count in 'uppercase' is not mandatory

until (( count < 0 ))
do
   echo "$count"
   (( count-- ))
done