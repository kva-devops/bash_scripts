#!/bin/bash
# Author: Kutiavin Vladimir
# Date: 13/02/21 
# Description: Logging messages from log file to filtered-messages file
# For start you need: nohup /path/to/script &

tail -fn0 /var/log/messages | while read line
do
	echo $line | egrep -i "refused|invalid|error|fail|lost|shut|down|offline"
		if [ $? = 0 ]
		then
			echo $line >> /tmp/filtered-messages
		fi
done	
