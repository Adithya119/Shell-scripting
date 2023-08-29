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