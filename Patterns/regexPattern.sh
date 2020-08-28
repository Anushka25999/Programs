#!/bin/bash -x

#turn on external globbing
shopt -s extglob
#User registration
read -p "Enter your First Name " fname

pat="^[A-Z][a-zA-Z]{2,}$"

if [[ $fname =~ $pat ]]
then
	echo "Valid Username"
else
	echo "Invalid Username"
fi
