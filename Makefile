# Declare a phone target
.PHONY: all clean

# Variables
out = paper/paper.html
# abstract = paper/sections/00-abstract.md
# intro = paper/sections/01-introduction.md
# discussion = paper/sections/02-discussion.md
# conclusion = paper/sections/03-conclusions.md


# wildcard
mds = $(wildcard sections/*.md)
# mds = sections/*.md might word, but depends on the command used



all: $(out)

# paper/paper.md: $(abstract) $(intro) $(discussion) $(conclusion)
paper/paper.md: $(mds)

	#concatinate the four files into one
	cat paper/sections/*.md > paper/paper.md

$(out): paper/paper.md
	pandoc -s paper/paper.md -o $(out)

# Create phone clean commands
clean:
	rm -f $(out)

