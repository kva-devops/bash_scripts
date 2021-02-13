#!/bin/bash
# Author: Kutiavin Vladimir
# Date: 13/02/2021
# Description: Send email to user with information from log file
# add this script in crontab: */20 * * * * /path/to/script
IT="mail@mail.com,mail@gmail.com"

if [ -s /tmp/filtered-messages ]
	then
	cat /tmp/filtered-messages | sort | uniq | mail -s "syslog message" $IT
	rm /tmp/filtered-messages
	else
fi
