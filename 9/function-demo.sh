#!/bin/bash

show_system_details() {
    echo "uptime is:-"
    uptime
    echo "cpu details"
    lscpu
    echo "user list"
    who
}