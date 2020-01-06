# This is a convenience function that sets the names on an object and returns the object

thisVector <- c("bibbity", "bobbity", "boo")

setNames(thisVector, c("a","b","c"))

# equivalent to...
names(thisVector) <- c("a","b","c")

# why? setNames avoids assignment and can be used inline

# one more thing. Names equal values
setNames(nm = thisVector)

# Most likely use...

thisFunction  <- function(aString) {
  # returns a list with each object named by item number
  myReturn <- strsplit(aString,"\\.")
  return(setNames(myReturn, c(1:length(myReturn))))
}

myList <- thisFunction(c("bibbity.bib","bobbity.bob","boo.boo"))
myList
                       