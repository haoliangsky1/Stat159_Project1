all: paper/paper.html


paper/paper.md: paper/sections/00-abstract.md paper/sections/01-introduction.md paper/sections/02-discussion.md paper/sections/03-conclusions.md
	#concatinate the four files into one
	cat paper/sections/*.md > paper/paper.md

paper/paper.html: paper/paper.md
	pandoc -s paper/paper.md -o paper/paper.html

clean:
	rm -f paper/paper.html