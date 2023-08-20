#!bin/bash

# our program goal is to install mysql

USERID=$(id -u)

# this function should validate the previous command if validate or not

VALIDATE(){
    #$1 --> it will receive the argument1

    if [ $1 -ne 0 ]
then
    echo "Installation  ...... failure"
    exit 1
else    
    echo "Installation  ........ success"

fi
}

if [ $USERID -ne 0 ]
then 
    echo "ERROR:: please run this script with root access"
    exit 1
else
    echo "INFO:: you are root user"

fi
# it is our responsibility again to check installation is success or failure
yum install mysql -y

VALIDATE $?

yum install postfix -y

validate $?



