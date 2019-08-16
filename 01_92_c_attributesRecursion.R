# use c() to simplify

arrayThing <- array(c(1:300), dim = c(10,10,3))
dfThing <- data.frame(letters = letters[1:10], numbers = 1:10, stringsAsFactors = FALSE )

# using c( ) to remove attributes
str(arrayThing)
vectorThing <- c(arrayThing) # removes attributes
str(vectorThing)

str(dfThing)
vectorThing <- c(dfThing) # simplifies to list

# recursive simplifies to vector, retaining names
vectorThing <- c(dfThing, recursive = TRUE) 
vectorThing
vectorThing["letters3"]
