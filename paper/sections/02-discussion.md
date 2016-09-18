# Discussion
Here we can discuss about the following tools and their roles in the reproducible workflow.

## Makefile

In most of open-source projects, `Makefile` is an essential file. It should contain a set of directives used with the *make* build automation tool. There are usually five types contents that makefiles contain:

1: Explicit rules: saying when and how to remake one or more files in the related project, which are called the rule’s targets. They list the other files that the targets depend on, called the prerequisites of the target, and some also give a recipe so as for users to create, update and customize the target for their own need.

2: Implicit rules: saying when and how to remake a class of files based on their names. They usually describe how a target may depend on a file with a name similar to the target and gives a recipe to create or update such a target.

3: Variable definition: a line that specifies a text string value for a variable that can be substituted into the text later.

4: Directive: an instruction for make to do something special while reading the makefile such as reading another makefile.

5: Comments: start with `#` in a makefile. 


In the context of reproducible workflow, makefile provides users with simple access to the project materials and results. Compiling the source code files can be exhausting, especially when multiple source files of different types are involved in the compiling process. If new users were not familiar with the projects, as in most cases, the process could be even more intimidating. Makefiles are a solution to simplify this task.


In a project, makefiles essentially work as a rigorous way of recording each step as the researchers or developers were doing it, enabling anyone to reproduce the entire process later. As long as the entire workflow or pipeline stays stable, any update to the project, including new data, different methods or better algorithms, could be easily added. 

## Git: 
![](https://raw.githubusercontent.com/ucb-stat159/stat159-fall-2016/master/projects/proj01/images/git-logo.png)

`Git` is a version control system that is used for software development and other version control tasks. As Linus Torvalds, its original author said that as a distributed revision control system, Git is aimed at speed, data integrity, and support for distributed, nonlinear workflows. 

Before Git, developers used to have carefully commented on the version of their codes so that they can keep track of the changes or updates they made to the files.
Using Git, every developer’s computer stores the entire history of the entire project as a “repository”, which enables developers to use Git locally even without internet connection. Because its nature of version control, Git allows a team of developers to collaborate on the same files without interfering other coworkers' progress.






## GitHub 
![](https://raw.githubusercontent.com/ucb-stat159/stat159-fall-2016/master/projects/proj01/images/github-logo.png)

`GitHub` is a web-based Git repository hosting service. It offers all of the distributed version control and source code management functionality of Gi as well as adding its own features. It provides access control and several collaboration features such as bug tracking, feature requests, task management, and wikis for every project

## Pandoc
![](https://raw.githubusercontent.com/ucb-stat159/stat159-fall-2016/master/projects/proj01/images/pandoc-logo.png)

`Pandoc` is a document converter, widely used as a writing tool and as a basis for publishing workflows.

1: Pandoc is doing extremely well when different markdown syntax extensions are involved, especially for scholarly works. It provides multiple different methods of rendering math, including MathJax, translation to MathML and Microsoft Word-based LaTeX math. It also includes a powerful system for automatic citation and bibliographies with pandoc-citeproc.

2:Pandoc offers relatively simple way to convert the most popular document formats smoothly, including markdown, pdf, HTML, raw text and so on.


## Markdown
![](https://raw.githubusercontent.com/ucb-stat159/stat159-fall-2016/master/projects/proj01/images/markdown-logo.png)

`Markdown` is a lightweight markup language with plain text formatting syntax designed so that it can converted to HTML, pdf, raw text and many other formats using a tool by the same name. Markdown is often used to format readme files, for writing messages in online discussion forums, and to create rich text using a plain text editor.