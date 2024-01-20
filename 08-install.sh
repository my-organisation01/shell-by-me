#!bin/bash

USERID=$(id -u)

if [$USERID -ne 0]
then
    echo "Run the script with root user"
    exit 1
else 
    ehco ""you are eroot user"
fi

yum install git -y