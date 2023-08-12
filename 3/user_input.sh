#!/bin/bash

read -p "What is your name? " your_name
read -p "What model are your running shoes? " shoes
read -p "What model is your bike? " bike

echo "Hi $your_name, great that you have choosen $shoes for running & $bike for cycling"           #   ${your_name} also works!




######

# [ec2-user@ip-172-31-45-220 3]$ ./user_input.sh
# What is your name? Adithya Reddy Kariveda
# What model are your running shoes? Nike pegasus 39
# What model is your bike? Triban RC 100                       #  ---> this one & above 2 are user inputs
# Hi Adithya Reddy Kariveda, great that you have choosen Nike pegasus 39 for running & Triban RC 100 for cycling   # --> final output