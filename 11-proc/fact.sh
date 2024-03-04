#!/bin/bash

# Define a function to calculate the factorial of a number
factorial() {
	if [ $1 -eq 0 ]; then
		echo 1
	else
		result=$(expr $1 \* $(factorial $(expr $1 - 1)))
		echo $result
	fi
}

# Calculate the factorial of 10 without using nice
echo "Factorial of 10 without nice:"
factorial 400
