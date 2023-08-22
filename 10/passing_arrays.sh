#!/bin/bash

array_a=(Gomathi Adithya)

function_1() {
   for item in "${array_a}"
   do
      echo $@
   done
}

function_1 "${array_a[$@]}"