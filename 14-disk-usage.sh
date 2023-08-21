#!/bin/bash

# colors
# validations
# log redirect

LOGFILE_DIRECTORY=/tmp
DATE=$(date +%F:%H:%M:%S)

SCRIPT_NAME=$0
LOGFILE=$LOGSDIR_DIRECTORY/$SCRIPT_NAME-$DATE.log

R="\e[31m"
G="\e[32m"
N="\e[0m"
Y="\e[33m"

DISK_USAGE=$( df -hT | grep -vE 'tmpfs|filesystem')
DISK_USAGE_THRESHOLD=1

# IFS- means internal faild seperator is space
while IFS= read line
do
    echo "output: $line"
done <<< $DISK_USAGE

