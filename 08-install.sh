#!bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
    echo "Run the script with root user"
    exit 1
else 
    echo "you are root user"
fi

yum install mysql -y

if [ $? -ne 0 ]
then
    echo "Installation of msyl is error"
    exit 1
else
    echo "Installaion of mysql is success"
fi

yum install postfix -y

if [ $? -ne 0 ]
then
    echo "Installation of postfix is error"
    exit 1
else
    echo "Installaion of postfix is success"
fi