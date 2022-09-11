README.md: guessinggame.sh
	echo "## Guessing Game" > README.md
	echo "" >> README.md
	echo "This file was created on" >> README.md
	date >> README.md
	echo "" >> README.md
	echo "guessinggame.sh contains" >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md
	echo "lines of code." >> README.md

