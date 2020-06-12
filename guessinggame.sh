#!/bin/bash
function guess_numbers_files {
	numbers_files=$(ls -l $PWD | tail -n+2 | wc -l)
	echo "Please, type number of files in the current directory"

	while [[ $numbers_files -ne $users_numbers_files ]]
	do
	read users_numbers_files
		if [[ $users_numbers_files =~ [[:alpha:]] ]]
		then
			echo "Please, type some digit"
		elif [[ $numbers_files -eq $users_numbers_files ]]
		then
				echo "Congratulations you guessed right!"
		elif [[ $numbers_files -lt $users_numbers_files ]]
		then
				echo "More than real numbers of files"
		elif [[ $numbers_files -gt $users_numbers_files ]]
		then
				echo "Less than real numbers of files"
		fi

	done
}

guess_numbers_files
