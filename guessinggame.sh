#!/usr/bin/env bash
# File: guessinggame.sh

# This function counts the number of files in the directory

function get_num_files {
	local number=$(ls -l | wc -l)-1
	echo $number
}

# Passes the number of files to the correct_number variable
correct_number=$(get_num_files)

# Start the game and prompt user for first guess.
echo "Guess how many files there are in the current directory."
read response
echo "You entered $response files."

# If guess is wrong, loop to let user know if they are too high or low
while [[ $response -ne $correct_number ]]
do 
	if [[ $response -gt $correct_number ]]
	then
		echo "I'm sorry, your guess is too high."
	else
		echo "I'm sorry, your guess is too low."
	fi
	echo "Please try again."
	read response
	echo "You entered $response files."
done

# When user is correct, congratulate them.
echo "Congratulations. $response is the correct number."
