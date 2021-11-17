# infix operators
# https://cran.r-project.org/doc/manuals/r-release/R-lang.html#Operators
# https://cran.r-project.org/doc/manuals/r-release/R-lang.html#Infix-and-prefix-operators

'%mangle%' <- function(aString, bString) {
  interString <- paste0(aString,bString)
  mangledString <- sample(c(unlist(strsplit(interString, ""))), nchar(interString))
  paste(mangledString, collapse = "")
}

"this" %mangle% "anddthat"
