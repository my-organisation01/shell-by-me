#!bin/bash

USERID=$(id -u)

VALIDATE() {
  if [ $? -ne 0 ]
then
    echo "$2 is....failure"
    exit 1
else
    echo "$2 is....success"
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

VALIDATE $? "mysql"

yum install postfix -y

VALIDATE $? "postfix"