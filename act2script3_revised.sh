#!/bin/bash

read -p "Please enter your name: " name
hour=$(date +%H)

if [ $hour -lt 12 ]; then
	echo "Good morning, $name!";
elif [ $hour -le 17 ]; then
	echo "Good afternoon, $name!";
elif [ $hour -gt 17 ]; then
	echo "Good evening, $name!";
fi
