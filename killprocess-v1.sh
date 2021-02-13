#!/bin/bash
# Author: Kutiavin Vladimir
# Date: 13/02/21
# Description: Kill some process

ps aux | grep "name_process" | grep -v grep | awk '{print $2}' | xargs -I{} kill {}

echo All name_process are killed

