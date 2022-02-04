#!/bin/bash

files_count=$(ls | wc -l)
echo $files_count

echo "How many files are in current directory?"
echo "Enter your guess: "
read  guess

while [ $guess -ne $files_count ]
do
	if [ $guess -eq $files_count ]
	then
		break
	elif [ $guess -lt $files_count ]
	then
		echo "$guess is too low"
	else
		echo "$guess is too high"
	fi

	echo "Guess again: "
	read guess
done
echo "Congratulations! $guess files are in current directory"



