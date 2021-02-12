#!/bin/bash
# Author: Kutiavin Vladimir
# Date: 12/02/21 
# Description: Check assined or not assined folder to real user in home directory

cd /home
for DIR in *
do
	CHK=$(grep -c "/home/$DIR" /etc/passwd)
	if [ $CHK -ge 1 ]
	then
		echo "$DIR is assained to user"
		else 
		echo "$DIR is NOT assined to user"
	fi
done
