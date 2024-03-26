#!/bin/bash

read -p "Please enter your first and last name: " firstLastName
read -p "Please enter your student ID: " studentID

if [ $studentID = "1234" ]
then
	echo "Welcome $firstLastName, welcome to your virtual machine!"
else
	echo "Error, invalid StudentID: $studentID. Please try again"
fi
