#!bin/bash

USERID=$(id-u)

if [$USERID -ne 0]
then
    echo "Run the script with root user"
else 
    ehco ""you ar eroot user
fi

yum install git -y