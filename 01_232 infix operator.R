# infix operators
# functions that behave like an operator

# https://cran.r-project.org/doc/manuals/r-release/R-lang.html#Operators
# https://cran.r-project.org/doc/manuals/r-release/R-lang.html#Infix-and-prefix-operators


'%alphasum%' <- function(aString, bString) {
  nchar(aString) + nchar(bString)
}

"this" %alphasum% "anddthat"

