#!/bin/bash

file_name=test-1.txt

for item in $(cat ${file_name})        # for every item in the contents of the given file
do
   echo $item
done


### Notes:-
# you are storing each content in 'item', hence you need to use $item while printing