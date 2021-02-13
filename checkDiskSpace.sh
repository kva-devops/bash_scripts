#!/bin/bash
# Author: Kutiavin Vladimir
# Date: 13/02/21
# Description: Check free disk space on system

result=`df -H | egrep -v "tmpfs|devtmpfs" | tail -n+2 |  awk '{print $5}' | cut -d'%' -f1`

for i in $result
do
	if [ $i -ge 10 ]
	then
		echo Check disk space `df -h | grep $i`
	fi
done
