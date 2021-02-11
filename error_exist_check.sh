#!/bin/bash
# Author: Kutiavin Vladimir
# Date: 11/02/21 
# Description: Check file exist or not

if [ -e /home/vagrant/error.txt ]
	then
	echo "File exist"
	else
	echo "File not exist"
fi
