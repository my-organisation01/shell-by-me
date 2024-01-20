#!bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
    echo "Run the script with root user"
    exit 1
else 
    echo "you are root user"
fi

yum install git -y
$?