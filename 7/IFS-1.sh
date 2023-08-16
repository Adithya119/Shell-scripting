#!/bin/bash

file_name=test-1.txt

for item in $(cat ${file_name})
do
   echo $item
done