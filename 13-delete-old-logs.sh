#!/bin/bash

APP_LOGS_DIR=/home/centos/app-logs

DATE=$(date +%F:%H:%M:%S)
LOGSDIR=/home/centos/shellscript1-logs
# /home/centos/shellscript1-logs/script-name-date.log
SCRIPT_NAME=$0
LOGFILE=$LOGSDIR/$0-$DATE.log

FILES_TO_DELETE=$(find $APP_LOGS_DIR -name "*.log" -type f -mtime +14)

echo "Script started executing at $DATE"


while read line

do
    echo "Deleting $line" &> $LOGFILE
    rm -rf $line

    #we write our statment
done <<< $FILES_TO_DELETE

echo "$message" | mail -s "HIGH DISK USAGE" info@joindevops.com


# 