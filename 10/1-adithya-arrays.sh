#!/bin/bash

names=(Gomathi Adithya twins)

echo "array has the following name(s): ${names[@]}"

display_names "${names[@]}"

display_names() {
    echo "array has the following name(s) inside function: ${names[@]}"
}