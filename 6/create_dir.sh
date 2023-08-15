#!/bin/bash

mkdir temp-dir
mkdir_ec=$?

if [[ ${mkdir_ec} -eq 0 ]]; then
   echo "directory creation successful"
fi

   echo "directory creation failed"