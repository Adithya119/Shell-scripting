#!/bin/bash

read -p "Do you like shell scripting? " reply

if [[ ${reply,,} = 'y' ]]; then
   echo "Great! continue your journey of learning"
   exit 0
fi