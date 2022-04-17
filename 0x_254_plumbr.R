# plumbr
# create an api with R

# don't be confused with "plumbr"
# install.packages("plumber")
library(plumber)

# plumber is an R6 function - Object-Oriented-Programming in R

# implementation ----------
simpleFunction <- function(this, that) {
  paste(rev(this), nchar(that) )
}

simpleFunction("Mark", "Niemann-Ross")

# saved as a plumber api in 01_254_SFplumber.R

runthis <- pr(file = "01_254_SFplumber.R")
pr_run(runthis) # opens api in a browser

# cheat sheet at https://github.com/rstudio/cheatsheets/ - look for plumber