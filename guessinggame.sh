#!/bin/bash
numbers_files=$(ls -l $PWD | wc -l)
echo "Please, type number of files in the current directory"
read users_numbers_files
echo "files: $numbers_files"
if [[ $numbers_files -eq $users_numbers_files ]]
then 
	echo "Correct"
elif [[ $numbers_files -lt $users_numbers_files ]]
then
	echo "More than real numbers of files"
elif [[ $numbers_files -gt $users_numbers_files ]]
then
        echo "Less than real numbers of files"
fi
