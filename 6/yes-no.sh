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
# ---

# some outcomes:-

# [ec2-user@ip-172-31-45-220 6]$ ./yes-no.sh
# Do you like shell scripting? y
# Great! continue your journey of learning

# [ec2-user@ip-172-31-45-220 6]$ ./yes-no.sh
# Do you like shell scripting? yes
# Great! continue your journey of learning

# [ec2-user@ip-172-31-45-220 6]$ ./yes-no.sh
# Do you like shell scripting? YES
# Great! continue your journey of learning

# [ec2-user@ip-172-31-45-220 6]$ ./yes-no.sh
# Do you like shell scripting? no

# [ec2-user@ip-172-31-45-220 6]$ ./yes-no.sh
# Do you like shell scripting? yeS               # yeS, yEs, yES
# Great! continue your journey of learning

# [ec2-user@ip-172-31-45-220 6]$ ./yes-no.sh
# Do you like shell scripting? Yes
# Great! continue your journey of learning
# [ec2-user@ip-172-31-45-220 6]$