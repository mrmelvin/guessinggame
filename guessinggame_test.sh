#!/bin/bash
numbers_files=$(ls -l $PWD | tail -n+2 | wc -l)
reg="A-Za-z,.?!@\#$%^\&\*()_-=+/|\\"
echo "Please, type number of files in the current directory"

while [[ $numbers_files -ne $users_numbers_files ]]
do
read users_numbers_files
if [[ $users_numbers_files =~ $reg ]]
then
        echo "Please, type some digit"
else

        if [[ $numbers_files -eq $users_numbers_files ]]
        then
                echo "Congratulations you guessed right!"
        elif [[ $numbers_files -lt $users_numbers_files ]]
        then
                echo "More than real numbers of files"
        elif [[ $numbers_files -gt $users_numbers_files ]]
        then
                echo "Less than real numbers of files"

        else
                echo "Please, type some digit"
        fi
fi

done







