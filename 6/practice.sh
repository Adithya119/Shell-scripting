#!/bin/bash

#####  This file is just for notes. I did not execute it  #####


# do something if the file /tmp/1.txt exists
if [[ -f /tmp/1.txt ]]; then  

# do something if the file doesn't /tmp/1.txt exist
if [[ ! -f /tmp/1.txt ]]; then

# do something if the ${variable} is not empty
if [[ -n ${variable} ]]; then                    # n stands for 'not'

# do something if the ${variable} is empty
if [[ ! -n ${variable} ]]; then                  # ! -n    --> negation of negation => it's not not empty --> means it's empty

# do something if the ${variable} is empty
if [[ -z ${variable} ]]; then


# note:- commands 4 & 5 yield the same result but have slighly different syntax