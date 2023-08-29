#!/bin/bash

# Downloading a File to a Specific Directory:
#   wget -P <dir_path> <url>

read -p "Enter the url where the file exists: " url
read -p "Enter the destination path where you want the downloaded file to be saved: " dest

download_file() {
    wget -P "${dest}" "${url}"
}

download_file
echo "..."
echo "**** Running 'ls -ltr /tmp/apache*' to check if the file has been downloaded"
echo "..."
ls -ltr /tmp/apache*



# https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.80/bin/apache-tomcat-9.0.80.tar.gz
# /tmp/


# ---
# [ec2-user@ip-172-31-45-220 11]$ ./download_file.sh
# Enter the url where the file exists: https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.80/bin/apache-tomcat-9.0.80.tar.gz
# Enter the destination path where you want the downloaded file to be saved: /tmp/
# --2023-08-29 11:02:55--  https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.80/bin/apache-tomcat-9.0.80.tar.gz
# Resolving dlcdn.apache.org (dlcdn.apache.org)... 151.101.2.132, 2a04:4e42::644
# Connecting to dlcdn.apache.org (dlcdn.apache.org)|151.101.2.132|:443... connected.
# HTTP request sent, awaiting response... 200 OK
# Length: 11692853 (11M) [application/x-gzip]
# Saving to: ‘/tmp/apache-tomcat-9.0.80.tar.gz’
# 
# apache-tomcat-9.0.80.tar.gz            100%[============================================================================>]  11.15M  --.-KB/s    in 0.08s
# 
# 2023-08-29 11:02:55 (146 MB/s) - ‘/tmp/apache-tomcat-9.0.80.tar.gz’ saved [11692853/11692853]
# 
# ...
# **** Running 'ls -ltr /tmp/apache*' to check if the file has been downloaded
# ...
# -rw-r--r--. 1 ec2-user ec2-user 11692853 Aug 23 22:19 /tmp/apache-tomcat-9.0.80.tar.gz