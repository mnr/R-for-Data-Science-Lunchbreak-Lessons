# Vectorize a function that normally isn't vectorized
# note capital V

# start with a sample function
myIf <- function(myVarA, myVarB) {
  if (myVarA == myVarB) {
    return(paste(myVarA, myVarB, "They Match"))
  } else {
    return(paste(myVarA, myVarB, "They Don't Match"))
  }
}

# Works as long as arguments are single numbers
myIf(3,4)
myIf(1,1)

# But fails if arguments are vectors
myIf(c(1:3), c(1,5,7))

# solution - Vectorize()
myIfVect <- Vectorize(myIf)

# now it works
myIfVect(c(1:3), c(1,5,7))

# results are identical to mapply
mapply(myIf, c(1:3), c(1,5,7))
