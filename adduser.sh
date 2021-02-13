#!/bin/bash
# Author: Kutiavin Vladimir
# Date: 13/02/21
# Description: Add user 

echo "Enter username..."
read username
echo

grep -q $username /etc/passwd 
	if [ $? -eq 0 ]
	then 
		echo "Error -> User $username already exist"
		echo "Please choose another username"
		echo 
		exit 0
	fi

echo "Provide user description..."
read desc
echo

echo "Do you whant to specify user ID (y/n)?"
read customid
echo 
	if [ $customid == y ]
	then 
	echo "Enter UID..."
	read uid
		grep -q $uid /etc/passwd
		if [ $? -eq 0 ]
		then
			echo "Error -> UserID $uid already exist"
			echo
			exit 0
			else 
				useradd $username -c "$desc" -u $uid
				echo	
				echo "$username account has been created"
		fi
	elif [ $customid == n ]
	then
	echo UID will assign automaticlly
	useradd $username -c "$desc"
	echo
	echo "$username has been created"
	fi
