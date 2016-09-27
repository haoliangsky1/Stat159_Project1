

## Discussion
Here we can discuss about the following tools and their roles in the reproducible workflow.

---

### Makefile

In most of open-source projects, `Makefile` is an essential file. It should contain a set of directives used with the *make* build automation tool. There are usually five types contents that makefiles contain:

* Explicit rules: saying when and how to remake one or more files in the related project, which are called the rule’s targets. They list the other files that the targets depend on, called the prerequisites of the target, and some also give a recipe so as for users to create, update and customize the target for their own need.

* Implicit rules: saying when and how to remake a class of files based on their names. They usually describe how a target may depend on a file with a name similar to the target and gives a recipe to create or update such a target.

* Variable definition: a line that specifies a text string value for a variable that can be substituted into the text later.

* Directive: an instruction for make to do something special while reading the makefile such as reading another makefile.

* Comments: start with `#` in a makefile. 


In the context of reproducible workflow, makefile provides users with simple access to the project materials and results. Compiling the source code files can be exhausting, especially when multiple source files of different types are involved in the compiling process. If new users were not familiar with the projects, as in most cases, the process could be even more intimidating. Makefiles are a solution to simplify this task.


In a project, makefiles essentially work as a rigorous way of recording each step as the researchers or developers were doing it, enabling anyone to reproduce the entire process later. As long as the entire workflow or pipeline stays stable, any update to the project, including new data, different methods or better algorithms, could be easily added. In this sense, we will not really use `make` for compiling, but for automating and streamlining tasks. Also, because it only executes the files that have changed, it enables the users to track timestamps, and to have a better idea about the workflow.

---

### Git: 
<img src='../images/git-logo.png' width='300' />

`Git` is a version control system that is used for software development and other version control tasks. As Linus Torvalds, its original author said that as a distributed revision control system, Git is aimed at speed, data integrity, and support for distributed, nonlinear workflows. 

Before Git, developers used to have carefully commented on the version of their codes so that they can keep track of the changes or updates they made to the files.
Using Git, every developer’s computer stores the entire history of the entire project as a “repository”, which enables developers to use Git locally even without internet connection. Because its nature of version control, Git allows a team of developers to collaborate on the same files without interfering other coworkers' progress.

<img src='../images/Git_operations.svg' width='400' />


With the graph of Git’s data structure above, we may have a better understanding about the commands it uses, and how the versions of our files flow from local working directory, to branches, and to the remote. Such data structure streamlines the version control process, making adding and committing relatively cheap, and unoding fairly simple. The existence of branches ensures that even when multiple developers were working on the same project, anyone could connect his or her current work to others to keep up with the progress.


---


### GitHub 
<img src='../images/github-logo.png' width='300' />


`GitHub` is a web-based Git repository hosting service. It offers all of the distributed version control and source code management functionality of Gi as well as adding its own features. It provides access control and several collaboration features such as bug tracking, feature requests, task management, and wikis for every project. More importantly, GitHub offers a nice looking Graphical User Interface so that the structure of the entire project is in orderly layout. And it provides convenient way to save and search for specific version based on the commit message, the file version, the file format and so on.


With only a few years of development, GitHub has been the core of open source projects, where developers store, exchange, trade and talk about their codes. Its distributed nature frees developers from constraints on working environment. People can pick up their work whenever and wherever they like, as long as they have a computer and network connection. It is not just a repository, but even social network for programmers.

---

### Pandoc
<img src='../images/pandoc-logo.png' width='300' />


`Pandoc` is a document converter, widely used as a writing tool and as a basis for publishing workflows.

1: Pandoc is doing extremely well when different markdown syntax extensions are involved, especially for scholarly works. It provides multiple different methods of rendering math, including MathJax, translation to MathML and Microsoft Word-based LaTeX math. It also includes a powerful system for automatic citation and bibliographies with pandoc-citeproc.

2:Pandoc offers relatively simple way to convert the most popular document formats smoothly, including markdown, pdf, HTML, raw text and so on.

---

### Markdown
<img src='../images/markdown-logo.png' width='300' />


`Markdown` is a lightweight markup language with plain text formatting syntax designed so that it can converted to HTML, pdf, raw text and many other formats using a tool by the same name. Markdown is often used to format readme files, for writing messages in online discussion forums, and to create rich text using a plain text editor. It provides much freedom in creating customized documents.

---

### Project Completion Process
In the process of completing the entire project, I was going through the following steps:

1: I create a new project on my GitHub account called `Stat159-Project1`

2: Then initialize and clone the remote repository to my local address using command
```
git init
git clone https://github.com/haoliangsky1/Stat159_Project1.git
```
3: In case that I may need to pull anything from the repository, I also added the skeleton remote with command:
```
git remote add skeleton https://github.com/haoliangsky1/Stat159_Project1.git
```
4: Then check the initial setup is correct with command:
```
git remote -v
```
5: After making sure that the connection is ready, I, following the file-structure specified in the instruction, created folders and markdown files with command including `mkdir` and `touch`, and add those new files to the remote repository with command:

* Adding all files:
```
git add .
```
* Commit the new changes with committing message:
```
git commit -m ‘First Commit’
```
* Push the files to remote repository:
```
git push origin master
```
* Check the commit status:
```
git status
```

The process was made possible largely because the instructions are detailed on the project websites. [Stack Overflow](http://stackoverflow.com/) has at least part of the answer for almost every related problems. And [Wikipedia](https://en.wikipedia.org/wiki/Main_Page) offers a lot of explanation with their citation well listed. With these help, the completion of the project was quite fluid.

The information gathering is quite simple and straightforward due to thorough discussion on the internet. The most challenging part happened when I created a few empty directory on my local working environment and tried to commit them to the remote repository. I followed the instruction as usual, but failed. It took me a few searches to realize that GitHub does not allow empty directories to be pushed. I then solved this by creating actual markdown files inside the directories.

The write-up of this paper took the credit for consuming the most time. For what we need to do was essentially extract the core from a lot of related information so that even complete strangers could have an idea about what these tools are about and what roles they play in the reproducible workflow. 

Learning how to write a `Makefile` also took some time, for I had no related experience before. Luckily the in lectures and labs we spent considerable time on it. The compiling task of the `Makefile` consists of multiple steps:

1. Concatenate the multiple `markdown` files in sections to one single `paper.md` file

2. Use `pandoc` to convert the `paper.md` file to `paper.html` file

3. Write a `clean` command so that the compiled file could be removed if needed.



I finished this project independently, for most of the information I need was available online. Because of the nature of lives of college students, I could not find a large trunk time solely for this project. Instead, I split up the project into shorter parts and did them one by one. In the process, I also get used to committing any changes I made to the files often and with more and more succinct and reader-friendly commit messages so that I can pick up where I was quickly.

