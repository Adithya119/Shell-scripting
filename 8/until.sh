#!/bin/bash

count=20

until (( count < 0 ))
do
   echo "$count"
   (( count-- ))
done