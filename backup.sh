#!/bin/bash
# Author: Kutiavin Vladimir
# Date: 12/02/2021 
# Description: Backup files
echo Enter directory for backup...
read -p "for example: /etc /var /home etc..." dir
echo Enter path for new backup file
read -p "for example: /tmp/backupfilename..." path

sudo tar cvf $path $dir &> /dev/null
sudo gzip $path
find ${path}.gz -mtime -1 -type f -print &> /dev/null

if [ $? -eq 0 ]
then	
	echo Backup was created
	echo
	echo Archiving Backup 
	ls ${path}.gz
#	scp ${path}.gz root@192.168.0.1
	else
	echo Backup failed
fi
