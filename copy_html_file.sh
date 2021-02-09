#!/bin/bash
for FILE in /var/www/html/*.html
do
    echo "Copying $FILE"
    cp $FILE /home/vagrant/html_files
done
