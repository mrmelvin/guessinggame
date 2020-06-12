all: README.md

README.md: guessinggame.sh
	echo "This is **guessinggame.sh** program" >> README.md
	echo -n "The guessinggame.sh contains the following number of strings: " >> README.md	
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md
	echo -n "makefile was run at: " >> README.md
	date +"%H:%M %Z %d.%m.%Y" >> README.md

clean:
	rm -rf README.md
