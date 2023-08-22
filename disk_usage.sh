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
message=""

# IFS- means internal faild seperator is space
while IFS= read line
do
    # this command will give you usage in number format for comparision
    USAGE=$(echo$line | wk '{print $6}' | cut -d % -f1)
    # This command will give us partition
    partition=$(echo$line  | awk '{print $1}')
    #now you need to check whether it is more than threshold or not
    if [$usage -gt $DISK_USAGE_THRESHOLD];
    then
        message+="HIGH DISK USAGE ON $partition: $usage"
        fi


done <<< $DISK_USAGE

echo "message: $message"

