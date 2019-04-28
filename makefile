README.md:
	touch README.md

README.md: guessingame.sh
	echo "Guess In Game project made for the peer-graded assignment (Unix Workbench)" > README.md
	echo "Created on:" >> README.md
	date '+%d/%m/%Y %H:%M:%S' >> README.md
	echo "Number of lines:" >> README.md
	wc -l ~/guessingame/guessingame.sh | awk '{ print $1 }' >> README.md
