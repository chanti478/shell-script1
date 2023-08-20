#!/bin/bash

USERID=$(id -u)

R="\e[31m"
N="\e[0m"

if [ $USERID -ne 0];
then
    echo -e "$R ERROR:: please run this script with root access $N"
    exit 1
fi
# all arguments are in $@
for i in $@
do
    yum install $i -y
done

# improvements
    #implement log files
    #implement clours
    #implement validations
    #implement validations through functions
    #your script should check package is installed or not, if already installed print yellow colour
    #If installed just print package is already installed, it should not  run install command
