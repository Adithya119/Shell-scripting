#!/bin/bash

show_system_details() {
    echo "----uptime is----"
    uptime
    echo "----cpu details----"
    lscpu
    echo "----user list----"
    who
}

show_system_details               # this is how you call a function. Plain & simple, by it's name. dont use () next to it