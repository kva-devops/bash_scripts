#!/bin/bash
# Author: Kutiavin Vladimir
# Date: 10/02/2021 
# Description: Run basic advinistrative commands
echo
echo Start script====================================================================
echo
top | head -15
echo
df -h
echo
free -m
echo
uptime
echo 
iostat
echo
echo End of script==================================================================

