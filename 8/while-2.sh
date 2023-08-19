#!/bin/bash

COUNT=20

while [ COUNT -gt 0 ]
do
   echo "$COUNT"
   (( COUNT-- ))
done