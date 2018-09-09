#!/usr/bin/env bash
# File: guessinggame.sh
function number_of_files {
    echo $(ls -p | grep -v / | wc -l)
}
echo "Enter how many files are in the current directory:"
while [[ true ]]
do
    read response
    let cur_number_of_files=$(number_of_files)
    if [[ response -eq cur_number_of_files ]]
    then
	break
    elif [[ response -lt cur_number_of_files ]]
    then
	echo "Your guess is too low"
    else
	echo "Your guess is too high"
    fi
    echo "Try to guess again:"
done
echo "Your guess $response is correct!"
echo "Congratulations!"

