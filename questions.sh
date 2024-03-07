#!/bin/bash

#Welcome the user to the Questino Script
echo "Welcome to the Questionnaire v1.0"
sleep 1
echo "Created by $(whoami) on $(date)"
sleep 1
echo "You will be prompted to answer several questions."
sleep 1
echo "Let's begin!!!"
sleep 1
echo "---------------Start Questions--------------"
sleep 1

#Question 1
read -p "What is your favorite color? " color
sleep 1
#Question 2
read -p "What is your favorite activity? " activity
sleep 1
#Questino 3
read -p "What is your favorite pizza topping? " topping
sleep 1

echo "-------------End of questions------------"
sleep 1

echo "-------------Now showing results--------------"
sleep 3

#Show results
if [ $color = "Blue" ]
then
	echo "Your favorite color is $color. Did you know that $color is the most popular color in the world! "
elif [ $color = "Pink" ]
then
	echo "Your favorite color is $color. Did you know that $color is the second most popular color in the world!"
elif [ $color = "Green" ]
then
	echo "Your favorite color is $color. Did you know that $color is made by mixing blue and yellow :)!"
else
	echo "Your favorite color is $color!!"
fi
sleep 1

if [ $activity = "Soccer" ]
then
	echo "Your favorite activity is $activity! $activity is the most popular sport in the world!"
elif [ $activity = "Gaming" ]
then
	echo "Your favorite activity is $activity! What's your favorite game?"
elif [ $activity = "Sleeping" ]
then
	echo "Your favorite activity is $activity. Me too...zzzzzz"
else
	echo "Your favorite color is $activity!!"
fi
sleep 1


if [ $topping = "Pepperoni" ]
then
	echo "Your favorite topping is $topping. Did you know that $topping is the most popular topping in the world! "
elif [ $topping = "Sausage" ]
then
	echo "Your favorite topping is $topping. Did you know that $topping is the second most popular topping in the world!"
elif [ $topping = "Pineapple" ]
then
	echo "Your favorite topping is $topping. Lots of people love it, lots of people don't :(."
else
	echo "Your favorite color is $topping!!"
fi
sleep 1

echo "---------Thank you for answering----------"
