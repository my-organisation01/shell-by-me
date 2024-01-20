#!/bin/sh

NUMBER=$1

if [ $NUMBER -gt 10 ]
then
    print "$NUMBER is greater than 10"
else
    echo "$NUMBER" is not greater than 10"