#!/bin/bash

read -p "Do you like shell scripting? " reply

if [[ ${reply,,} = 'y' ]] || [[ ${reply^^} = 'YES' ]]; then               # combining 2 stmts with 'or'                
   echo "Great! continue your journey of learning"
   exit 0
fi



# ----------

# Notes:-
# -eq is not working. -eq & -ne works only with numericals. Hence use =
# enclose the y in quotations:- 'y'