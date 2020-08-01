#!/usr/bin/env bash

function congrats {
	echo "Congratulations! Your answer is right!"
}

ctrl=0

while [[ $ctrl -eq 0 ]]
do
	echo "Please type the number of files in current directory:"
	read response
	echo "You entered : $response"
	numfiles=(*)
	numfiles=${#numfiles[@]}
	echo "the number of files is: $numfiles"
	if [[ response -eq numfiles ]]
	then
		congrats
		ctrl=1
	elif [[ response -gt numfiles ]]
	then
		echo "your guess is too high"
	else
		echo "your guess is too low"
	fi
done