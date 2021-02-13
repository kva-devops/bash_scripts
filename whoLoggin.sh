#!/bin/bash
# Author: Kutiavin Vladimir
# Date: 
# Description: 
echo "Enter Day (e.g. Mon)"
read day
echo "Enter Month (e.g. Feb)"
read mon
echo "Enter date (e.g. 13)"
read num
echo "Want to see only username in output? (yes or no)"
read only_user_name

if [ $only_user_name == "no" ]
then
#	today=`date | awk '{print $1, $2, $3}'`
	last | grep "$day $mon $num"
else
	
#	today=`date | awk '{print $1, $2, $3}'`
	last | grep "$day $mon $num" | awk '{print $1}'
	
	echo "Want to see full information? (yes or no) "
	read full_info
	
	if [ $full_info == "yes" ]
	then 
		last | grep "$day $mon $num"
	fi
fi
