#!bin/bash

# our program goal is to install mysql

DATE=$(date +%F)
SCRIPT_NAME=$0
LOGFILE=/temp/$SCRIPT_NAME-$DATE.log
# this function should validate the previous command if validate or not
R="\e[31m"
G="\e[32m"
N="\e[0m"
VALIDATE(){
    #$1 --> it will receive the argument1

    if [ $1 -ne 0 ]
then
    echo "$2   ......$R failure $n"
    exit 1
else    
    echo "$2   ........ $G success $N"

fi
}

USERID=$(id -u)




if [ $USERID -ne 0 ]
then 
    echo "ERROR:: please run this script with root access"
    exit 1
else
    echo "INFO:: you are root user"

fi
# it is our responsibility again to check installation is success or failure
yum install mysql -y &>>$LOGFILE

VALIDATE $? "installing MYsql"

yum install postfix -y &>>$LOGFILE

VALIDATE $? "Installing Postfix"




