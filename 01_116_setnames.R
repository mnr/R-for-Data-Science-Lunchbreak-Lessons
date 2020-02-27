# This is a convenience function that sets the names on an object and returns the object

thisVector <- c("bibbity", "bobbity", "boo")

setNames(thisVector, c("a","b","c"))

# why? setNames avoids assignment and can be used inline

# equivalent to...
names(thisVector) <- c("a","b","c")


# Most likely use...

thisFunction  <- function(aString) {
  # returns a list with each item named by letter
  myReturn <- strsplit(aString,"\\.")
  
  # with names <- 
  # names(myReturn) <- LETTERS[1:length(myReturn))]
  # return(myReturn)
  
  # with setnames
  return(setNames(myReturn, c(1:length(myReturn))))
}

myList <- thisFunction(c("bibbity.bib","bobbity.bob","boo.boo"))
myList
                       
# one more thing. Names equal values
setNames(nm = thisVector)
