#!/bin/bash

read -p "Enter the url where the file exists: " url
read -p "Enter the destination path where you want the downloaded file to be saved: " dest

download_file() {
    wget -P "${1}" "${2}"           ##
}

download_file ${dest} ${url}        # passing user inputs as args to the function
echo "..."
echo "**** Running 'ls -ltr /tmp/apache*' to check if the file has been downloaded"
echo "..."
ls -ltr /tmp/apache*