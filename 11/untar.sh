#!/bin/bash

# extract a tar to a specific location
#   tar -xvf <tar file to be extracted> -C <dest dir>


read -p "Enter the path where the tar file is: " src
read -p "Enter the dest path where you want to extract the file to: " dest

untar_file() {
    tar -xf "${src}" -C "${dest}"
}

untar_file
echo "..."
echo "**** Running 'ls ${dest}' to check if the file was extracted ****"
echo "..."
ls "${dest}"


#  tar -xf /tmp/apache-tomcat-9.0.80.tar.gz -C /home/ec2-user/


# -----
# [ec2-user@ip-172-31-45-220 11]$ ./untar.sh
# Enter the path where the tar file is: /tmp/apache-tomcat-9.0.80.tar.gz
# Enter the dest path where you want to extract the file to: /home/ec2-user/
# ...
# **** Running 'ls /home/ec2-user/' to check if the file was extracted ****
# ...
# 1.txt  1.txt.bak  apache-tomcat-9.0.80  contents  Shell-scripting