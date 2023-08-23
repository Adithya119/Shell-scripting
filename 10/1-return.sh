#!/bin/bash
print_message() {
    a="${1}"
    b="Message is ${a}"
    return b
}

print_message Hello!

$reply=$print_message
echo $reply