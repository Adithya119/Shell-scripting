#!/bin/bash
print_message() {
    a="${1}"
    b="Message is $a"
    return $b
}

print_message

b=$print_message
echo $b