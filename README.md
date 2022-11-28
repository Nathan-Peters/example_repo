# example_repo
This is an example R script that shows some of the benefits of github including
- Version control
- Issues log
- Documentation

# Version control
Each commit you do creates a past version you can go back to and compare the change from the previous commit.

It is also possible to compare any two commits by typing `compare` after the URL; eg `https://github.com/Nathan-Peters/example_repo/compare/`. To compare two commits you then just change the URL so it looks like `compare/old_commit...new_commit` where we replace the commit name with its number.
![commit compare screenshot2](https://user-images.githubusercontent.com/79589405/204314403-16a6dfae-16f5-4f94-9ca0-63168f46501e.png)

E.g. to compare changes in code from *"read in data"* to *"add labels and recolor points"* you would go to to `https://github.com/Nathan-Peters/example_repo/compare/0eee053...d3fe2b9`
![commit compare screenshot](https://user-images.githubusercontent.com/79589405/204314202-2f1ce96a-3aa6-48b8-bd2e-9e3a82a6ade7.png)

# Issue log
The issue log can be used to raise issues/feature requests. You can either raise an issue from scratch or from an existing line of code. It is possible to then add tags to these such as "bug", "improvement", "high priority" etc as well as assign them to certain people. 

When fixing these by using branching, you can then reference the issue and it will automatically link them and tag when the merge has been checked and approved.

# Documentation
Documentation can be done via commenting in code using the `#` such as 
```
data <- read_csv("data.csv")  #this loads the data file and saves it in the dataframe 'data'
```

A **markdown** file can also be used to provide a document for your code. This is a basic text formatting language (similar to LaTeX) that allows you to mix text with images, links, code etc. This document itself is markdown! 

In R, you can create RMarkdown files which combines markdown while running your code. This allows you to produce different outputs (including HTML, PDFs, etc) that mix free text with code that runs. There is an example in this repo you can download to see (file extension .Rmd).
