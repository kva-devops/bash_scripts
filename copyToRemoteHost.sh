#!/bin/bash
# Author: Kutiavin Vladimir
# Date: 
# Description: 

copyfile="filename.txt" # file on your host
dircopy="/tmp"		# directory on remote host

# pasring host file and create container for hosts list
host=`cat /home/vagrant/profiscript/hosts | grep '[^a-z][[:digit:]]'`


for i in $host
do	
	scp $filename $i:/$dircopy
done
