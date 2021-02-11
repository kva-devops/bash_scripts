#!/bin/bash
# Author: Kutiavin Vladimir
# Date: 11/02/21 
# Description: Scan logs file and find line what you need

sudo cp /var/log/messages .
sudo chown vagrant:vagrant messages

while true
do
	echo What messages you want pull?
	echo
	echo Press 1 for pull error messages
	echo Press 2 for pull warn messages
	echo Press 3 for pull fail messages
	echo Press 0 for pull error, warn and fail messages
	echo Press f for create files with error, warn and fail messages
	echo Press q for exit
	echo 
	read result
	case $result in
		1) grep -i error messages;;
		2) grep -i warn messages;;
		3) grep -i fail messages;;
		0) grep -i -e error -e warn -e fail messages;; 
		f) grep -i -e error -e warn -e fail messages > errorWarnFailMessages.txt
		   echo File create;; 
		q|Q|exit) exit 0;;
		*) echo "Invalid choises"
	esac
done
grep -i error messages
