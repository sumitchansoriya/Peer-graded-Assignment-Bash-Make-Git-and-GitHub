all: README.md

README.md: guessinggame.sh
	echo "Peer-graded Assignment: Bash, Make, Git, and GitHub" > README.md
	date >> README.md
	cat guessinggame.sh | wc -l >> README.md

index.md: README.md
	cp ./README.md

clean:
	rm README.md