#!/bin/bash

show_system_details() {
    echo "uptime is:-"
    uptime
    echo "cpu details"
    lscpu
    echo "user list"
    who
}


# --

# If you run this, it doesn't get executed coz the scope of a function is inside that shell script. That's why it won't print anything.

# [ec2-user@ip-172-31-45-220 9]$ ./function-demo.sh
# [ec2-user@ip-172-31-45-220 9]$

# ---

# for this to run, you need to call the function. -----> refer function-2.sh