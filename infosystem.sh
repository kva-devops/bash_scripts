#!/bin/bash

while true 
do
    echo -e  "1. Show disk usage. \n2. Show system uptime. \n3. Show the users logged into the system.\n \
             What would you like to do? (Enter q to quit.)"
    read value
    echo -e "\n"
    case "$value" in
        1) 
            echo -e "========================================================\n"
            df
            echo -e "\n"  
            echo -e "========================================================\n"
            echo -e "\n"  
            ;;
        2) 
            echo -e "========================================================\n"
            uptime
            echo -e "\n"  
            echo -e "========================================================\n"
            echo -e "\n"
            ;;
        3)
            echo -e "========================================================\n"
            who
            echo -e "\n"  
            echo -e "========================================================\n"
            echo -e "\n"    
            ;;
        q) 
            echo -e "Goodbye\n"
            exit 0 
            ;;
        *) 
            echo -e "Invalid option\n"
            ;;
    esac   
done

