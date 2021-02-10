#!/bin/bash


INDEX="1"


while read line
do 
    echo "${INDEX}: $line"
    ((INDEX++))
done < /etc/passwd
