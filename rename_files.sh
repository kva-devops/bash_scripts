#!/bin/bash 
shopt -s nullglob
# Global variable
DATE=$(date +%F)
# read and save variables
read -p "enter extension file... " EXT
#echo "$EXT"

read -p "enter prefix (press ENTER for value default YYYY-MM-DD)... " PREFIX
# Doing check for correct prefix
if [ -z $PREFIX ]
then
    PREFIX=$DATE
fi
#echo "$PREFIX"

# body of script
for FILE in *.${EXT}
do
    mv $FILE ${PREFIX}-${FILE}
    echo "Renaming ${FILE} to ${PREFIX}-${FILE}"
done
