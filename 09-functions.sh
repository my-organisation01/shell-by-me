#!bin/bash

USERID=$(id -u)

VALIDATE(){
  if [ $? -ne 0 ]
then
    echo "Installation is....failure"
    exit 1
else
    echo "Installaion is....success"
fi  
}

if [ $USERID -ne 0 ]
then
    echo "Run the script with root user"
    exit 1
else 
    echo "you are root user"
fi

yum install mysql -y

VALIDAE $?

yum install postfix -y

VALIDAE $?