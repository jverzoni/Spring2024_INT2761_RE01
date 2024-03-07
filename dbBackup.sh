#!/bin/bash

#Welcome
echo "Welcome to the MySQL DB BackUp Script v 1.0"
sleep 1
echo "This script will back up a MySQL DB of your choice"
sleep 1
echo "----------------Gathering Details---------------"
sleep 1

#Gather Backup Details
read -p "Enter the name of the MySQL DB that should be backed up: " dbBackup
sleep 1
read -p "Enter the absolute path where you'd like to save your back up file: " absolutePath
sleep 1
read -p "Enter the desired name of the backup file (Name only): " backupFile
sleep 1

#Create the final backup location and its file name
finalBackup="$absolutePath/$backupFile-$(date +%Y-%m-%d_%H-%M-%S).sql"

#Prompt user for username and password
read -p "Enter the username for MySQL: " username
sleep 1
read -p -s "Enter the password for MySQL: " psswd
sleep 1

#DB Backup
sudo mysqldump -u $username -p$psswd $dbBackup > $finalBackup

#Error check
if [ $? = 0 ]; then
	echo "Backup was successful. Your backup file is located here: $finalBackup"
else
	echo "An error occurred during the backup. Try again."
fi
