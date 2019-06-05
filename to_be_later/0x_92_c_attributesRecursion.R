# using c( ) to remove attributes
vectorThing <- c(arrayThing) # removes attributes
str(vectorThing)
vectorThing <- c(dfThing) # simplifies to list

# recursive simplifies to vector, retaining names
vectorThing <- c(dfThing, recursive = TRUE) 
vectorThing
vectorThing["alpha13"]
