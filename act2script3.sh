#!/bin/bash

read -p "Please enter your name: " name
date=date
hour=$(date | cut -c12-13)

if [[ "$hour" < "12" ]];
then
	echo "Good morning, $name!";
elif [[ "$hour" > "11" ]] && [[ "$hour" < "18" ]];
then
	echo "Good afternoon, $name!";
elif [[ "$hour" > "17" ]];
then
	echo "Good evening, $name!";
fi
