# Use rmd for documentation	Rmd is an R version of markdown, a common format for
# writing documentation. Learning to create reproducible and documented course
# is essential for data scientists.

# Check out Ray Villalobos "Up and Running with Markdown"

# if you're using Rstudio - it's installed
# if not rstudio, install.packages("rmarkdown")

# file : new file : rmarkdown... 
# several options - html, pdf, word

# insert code block
# show use of code
# change to {r, echo = FALSE}
# removes code from view - only results
# change to {r, include=FALSE}
# removes all from view
# then use that code in a later code block

# including other languages
# what is supported by knitr?
names(knitr::knit_engines$get())
Sys.which("python")

# add python.reticulate = false...

```{python, python.reticulate = FALSE}
x = 42 * 2
print("python", x) 
```

```{bash}
print "this is bash"
```
# doesn't work. Why not?
Sys.which("bash") # comes up empty on windows because bash not installed
