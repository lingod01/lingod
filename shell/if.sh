#!/bin/bash

echo $#
echo $0
echo $1

if [ $# -eq 0 ];then
	DIR=/var/www/
else 
	DIR=$1
fi

echo $DIR
