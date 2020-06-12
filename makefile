all: README.md

README.md: guessinggame.sh
	echo "# guessinggame " > README.md
	echo "1. When the program starts the user should be asked how many files are in the current directory, and then the user should be prompted for a guess.\n \
	2. If the user's answer is incorrect the user should be advised that their guess was either too low or too high and then they should be prompted to try to guess again.\n \
	3. If the user's guess is correct then they should be congratulated and the program should end." >> README.md
	echo -n "## Special information \n The **guessinggame.sh** contains the following number of strings: " >> README.md	
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md
	echo -n "\n**makefile** was run at: " >> README.md
	date +"%H:%M %Z %d.%m.%Y" >> README.md

clean:
	rm -rf README.md
