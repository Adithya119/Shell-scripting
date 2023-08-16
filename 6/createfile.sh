#!/bin/bash

dir_path=$1       # full path of dir
file_name=$2
file_content=$3

# check if 3 args are passed:-

if [[ $# -ne 3 ]]; then        # checking for negative case 1st      # just like 'fail' module in Ansible playbook
   echo "no. of arguements passed is not equal to 3. Please pass 3 arguements"
   exit 1
fi


if [[ ! -d ${dir_path} ]]; then                    # another possible negative case, with a positive stmt inside it
   echo "The entered directory ${dir_path} doesn't exist. Hence creating ${dir_path}..."
   mkdir ${dir_path} || { echo "cannot create ${dir_path}"; exit 1; }                         # enclose the echo & exit stmt in {}
fi                                    # no else stmt required coz if dir already exists, check the below stmt.


if [[ ! -f ${dir_path}/${file_name} ]]; then            # # another possible negative case, with a positive stmt inside it
   echo "The entered file ${file_name} doesn't exist. Hence creating ${file_name}..."
   touch ${dir_path}/${file_name} || { echo "cannot create file ${file_name}"; exit 1; }
fi


# since file is either created or present, add contents to it:-         # positive stmt, after making sure of no possible negatives.
echo "adding contents to ${file_name}..."
echo ${file_content} >> ${dir_path}/${file_name}       # >> means apend.    > means overwite

cat ${dir_path}/${file_name}



# ----------
# 1 of the outcomes:-

# [ec2-user@ip-172-31-45-220 6]$ ./createfile.sh testing 7.txt "line-2"
# The entered directory testing doesn't exist. Hence creating testing...
# The entered file 7.txt doesn't exist. Hence creating 7.txt...
# adding contents to 7.txt...
# line-2