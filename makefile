all: README.md

README.md:
	touch README.md
	echo "# Guessing Game" > README.md
	echo "This file was created at __$$(date '+%Y-%m-%d %H:%M:%S')__."  >> README.md
	echo "'guessinggame.sh' contains __$$(cat guessinggame.sh | wc -l)__ lines of code.\n" >> README.md
	
clean:
	rm README.md