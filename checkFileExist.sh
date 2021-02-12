#!/bin/bash
# Author: Kutiavin Vladimir
# Date: 12/02/2021
# Description: Check files existing

FILES="/etc/hosts
/etc/passwd
/etc/ssh/sshd_config
/var/www/html
/etc/nginx
/etc/apache
/etc/git"

for file in $FILES
do
	if [ ! -e $file ]
	then
		echo WARN! File $file doesn\'t exist...
		echo
	else
		echo OK! File $file exist...
		echo
	fi
done
