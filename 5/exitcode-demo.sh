#!/bin/bash

mktemp
mktemp_ec=$?

mkdir /home/ec2-user                   # this will fail coz /home/ec2-user already exists
mkdir_ec=$?

echo "exit code of mktemp is ${mktemp_ec}"
echo "exit code of mkdir is ${mkdir_ec}"