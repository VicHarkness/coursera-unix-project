all: readme


readme: 
	touch README.md
	echo "This is the Peer Graded Assignment: Bash, Make, Git, and GitHub for the The Unix Workbench Coursera course" >> README.md
	echo "This file was ran at " >> README.md
	date >> README.md
	echo "It contains this many lines" >> README.md
	wc -l README.md >> README.md

clean:
	rm README.md
