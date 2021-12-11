all: readme.md

	touch readme.md
	echo '# The Guessing Game' > readme.md
	echo '## A UNIX Workbench project' >> readme.md
	echo 'Make last ran at $(shell date +%m-%d-%Y:%H:%M:%S)' >> readme.md
	echo 'There are $(shell wc -l < guessinggame.sh | egrep "[0-9]+") lines in the guessinggame script.' >> readme.md
clean:
	rm read.me
