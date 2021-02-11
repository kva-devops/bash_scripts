#!/bin/bash
# Author: Kutiavin Vladimir
# Date: 11/02/21
# Description: Ping hosts from file list

# Define ip address our host and save in file
ip add | awk '/'192.*'/{print $2}' | sed 's/\/[1-9]*//g' &> /dev/null  # >myhost

LISTIP="/home/vagrant/profiscript/myhosts"

for ip in $(cat $LISTIP)
do
	ping -c1 $ip &> /dev/null
	if [ $? -eq 0 ]
	then 
	echo $ip is OK
	else 
	echo $ip is NOT OK
	fi
done
