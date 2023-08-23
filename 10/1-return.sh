#!/bin/bash
print_message() {
    a="${1}"
    b="Message is ${input}"
    return "${b}"
}

print_message Hello!

$reply=$print_message "1"
echo $reply