# plumbr
# create an api with R

# don't be confused with "plumbr"
# install.packages("plumber")
library(plumber)

# plumber is an R6 function - Object-Oriented-Programming in R

# implementation ----------
simpleFunction <- function(this, that) {
  paste(toupper(this), nchar(that) )
}

simpleFunction("Mark", "Niemann-Ross")

# saved as a plumber api in 01_254_SFplumber.R

runthis <- pr(file = "01_254_SFplumber.R")
pr_run(runthis) # opens api in a browser

# from any browser
# http://127.0.0.1:3811/changeStrings?this=mark&that=niemann-ross

#' @Manual{,
#'   title = {plumber: An API Generator for R},
#'   author = {Barret Schloerke and Jeff Allen},
#'   year = {2022},
#'   note = {https://www.rplumber.io, https://github.com/rstudio/plumber},
#' }
# cheat sheet at https://github.com/rstudio/cheatsheets/ - look for plumber