#!/bin/bash

dir_path=$1       # full path of dir
file_name=$2
file_content=$3

# check if 3 args are passed:-

if [[ $# -ne 0 ]]; then        # checking for negative case 1st      # just like 'fail' module in Ansible playbook
   echo "no of arguements passed is not equal to 3. Please pass 3 arguements"
   exit 1
fi


if [[ ! -d ${dir_path} ]]; then                    # another possible negative case, with a positive stmt inside it
   echo "The entered directory ${dir_path} doesn't exist. Hence creating ${dir_path}..."
   mkdir ${dir_path} || { echo "cannot create ${dir_path}"; exit 1; }                         # enclose the echo & exit stmt in {}
fi                                    # no else stmt required coz if dir already exists, do nothing for now.


if [[ ! -f ${dir_path}/${file_name} ]]; then            # # another possible negative case, with a positive stmt inside it
   touch ${dir_path}/${file_name} || { echo "cannot create file ${file_name}"; exit 1; }
fi


# since file is either created or present, add contents to it:-
echo ${file_content} >> ${dir_path}/${file_name}                        # positive stmt, after making sure of no possible negatives.
