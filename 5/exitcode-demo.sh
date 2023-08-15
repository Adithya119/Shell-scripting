#!/bin/bash

mktemp
mktemp_ec=$?

mkdir /home/ubuntu                   # this will fail coz /home/ubuntu already exists
mkdir_ec=$?

echo "exit code of mktemp is ${mktemp_ec}"
echo "exit code of mkdir id ${mkdir_ec}"