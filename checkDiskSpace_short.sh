#!/bin/bash
# Author: Kutiavin Vladimir
# Date: 13/02/21
# Description: Check free disk space on system short version: if usage more then 90% - print result

df -h | awk '0+$5 > 90 {print}' 
