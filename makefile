
readme:
	touch README.md
	echo "**Guessing Game**" > README.md
	echo "Guess the number of files in the current directory!" >> README.md
	echo "Generated on " >> README.md
	date >> README.md
	echo "No. of lines in guessinggame.sh" >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md
